// 3rd Party Imports

import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Result "mo:base/Result";

// Project Imports

import AssetTypes "../Assets/types";

// Module Imports

import Types "types";


module {

    public class Ledger (state : Types.State) {


        ////////////////////////
        // Utils / Internals //
        //////////////////////


        private func _getNextMintIndex () : ?Nat {
            var i : Nat = 0;
            for (v in ledger.vals()) {
                if (v == null) return ?i;
                i += 1;
            };
            return null;
        };

        public func _getLegend (i : Nat) : Types.Legend {
            legends[i];
        };


        ////////////
        // State //
        //////////


        var mintingStage : Types.MintingStage = #admins;
        var ledger : [var ?Principal] = Array.init(state.supply, null);
        var legends : [Types.Legend] = [];

        // Provision ledger from stable state
        ledger := Array.thaw(state.ledger);

        // Provision legends from stable state
        legends := state.legends;

        public func toStable () : {
            ledger  : [?Principal];
            legends : [Types.Legend];
        } {
            {
                ledger = Array.freeze(ledger);
                legends = legends;
            }
        };


        ////////////////
        // Admin API //
        //////////////


        // @auth: admin
        public func setMintingStage (
            caller  : Principal,
            stage   : Types.MintingStage,
        ) : async () {
            assert(state.admins._isAdmin(caller));
            mintingStage := stage;
        };

        // @auth: admin
        public func mint (
            caller  : Principal,
            to      : Principal,
        ) : Result.Result<(), Text> {
            assert(state.admins._isAdmin(caller));
            switch (_getNextMintIndex()) {
                case (?i) {
                    ledger[i] := ?to;
                    #ok();
                };
                case _ #err("No more supply.");
            }
        };

        // @auth: admin
        public func configureLegends (
            caller  : Principal,
            conf    : [Types.Legend],
        ) : Result.Result<(), Text> {
            assert(state.admins._isAdmin(caller));
            if (conf.size() != state.supply) {
                return #err(
                    "Must include configuration for " #
                    Nat.toText(state.supply) #
                    " legends. Received " #
                    Nat.toText(conf.size())
                );
            };
            legends := conf;
            #ok();
        };


        /////////////////
        // Public API //
        ///////////////


        public func read (index : ?Nat) : [?Principal] {
            switch (index) {
                case (?i) [ledger[i]];
                case _ Array.freeze(ledger);
            };
        };


        public func nfts (index : ?Nat) : [Types.Legend] {
            switch (index) {
                case (?i) [legends[i]];
                case _ legends;
            };
        };


    };

};