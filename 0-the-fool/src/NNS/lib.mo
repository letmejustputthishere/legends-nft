import AccountIdentifier "mo:principal/AccountIdentifier";
import Array "mo:base/Array";
import Blob "mo:base/Blob";
import Buffer "mo:base/Buffer";
import CRC32 "CRC32";
import Hex "Hex";
import Nat32 "mo:base/Nat32";
import Nat8 "mo:base/Nat8";
import Prim "mo:⛔";
import Principal "mo:base/Principal";
import SHA224 "SHA224";
import Text "mo:base/Text";
import Time "mo:base/Time";


import Types "types";

import Debug "mo:base/Debug";


module {


    ////////////
    // Utils //
    //////////


    // Until Quint's account identifier method is fixed:
    func beBytes(n: Nat32) : [Nat8] {
        func byte(n: Nat32) : Nat8 {
            Nat8.fromNat(Nat32.toNat(n & 0xff))
        };
        [byte(n >> 24), byte(n >> 16), byte(n >> 8), byte(n)]
    };
    type Subaccount = Blob;
    public type AccountIdentifier = Blob;

    public func accountIdentifier(principal: Principal, subaccount: Subaccount) : AccountIdentifier {
        let hash = SHA224.Digest();
        hash.write([0x0A]);
        hash.write(Blob.toArray(Text.encodeUtf8("account-id")));
        hash.write(Blob.toArray(Principal.toBlob(principal)));
        hash.write(Blob.toArray(subaccount));
        let hashSum = hash.sum();
        let crc32Bytes = beBytes(CRC32.ofArray(hashSum));
        Blob.fromArray(Array.append(crc32Bytes, hashSum))
    };

    public func defaultSubaccount() : Subaccount {
        Blob.fromArrayMut(Array.init(32, 0 : Nat8))
    };

    public func defaultAccount(
        principal : Principal
    ) : Text {
        Text.map(Hex.encode(Blob.toArray(accountIdentifier(principal, defaultSubaccount()))), Prim.charToUpper);
    };


    public class Factory (state : Types.State) {

        ////////////
        // State //
        //////////


        /////////////////
        // Blocks API //
        ///////////////


        let blockProxy : Types.BlockProxy = actor("ockk2-xaaaa-aaaai-aaaua-cai");

        public func block (
            blockheight : Nat64,
        ) : async {
            #Ok : { #Ok : Types.Block; #Err : Types.CanisterId };
            #Err : Text;
        } {
            await blockProxy.block(blockheight);
        };


        ////////////////
        // Admin API //
        //////////////
        

        // Check the balance of this canister on the NNS ledger
        // @auth: admin
        public func balance(
            p       : Principal,
        ) : async Types.ICP {
            let nns : Types.NNS = actor("ryjl3-tyaaa-aaaaa-aaaba-cai");
            await nns.account_balance({
                account = accountIdentifier(p, defaultSubaccount());
            });        };

        // Transfer funds on nns ledger
        // @auth: admin
        public func transfer (
            caller  : Principal,
            amount  : Types.ICP,
            to      : Text,
            memo    : Types.Memo,
        ) : async Types.TransferResult {
            assert(state.admins._isAdmin(caller));
            switch (Hex.decode(to)) {
                case (#ok(aid)) {
                    let nns : Types.NNS = actor("ryjl3-tyaaa-aaaaa-aaaba-cai");
                    await nns.transfer({
                        fee = { e8s = 10_000; };
                        amount;
                        memo;
                        from_subaccount = null;
                        created_at_time = null;
                        to = Blob.fromArray(aid);
                    })
                };
                // TODO This error is horribly incorrect.
                case (#err(#msg(e))) {
                    Debug.print(e);
                    #Err(#TxCreatedInFuture(null));
                };
            };
        };

    };

};