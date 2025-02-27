import Ext "mo:ext/Ext";

import Cap "mo:cap/Cap";

import Admins "../Admins";
import Assets "../Assets";


module Ledger {

    public type State = {
        admins  : Admins.Admins;
        assets  : Assets.Assets;
        cap     : Cap.Cap;
        tokens  : [?Token];
        legends : [Legend];
        supply  : Nat;
        _canisterPrincipal  : () -> Principal;
    };

    public type Legend = {
        back    : Text;
        border  : Text;
        ink     : Text;
    };

    public type TokenIndex = Nat32;

    public type Token = {
        createdAt  : Int;
        owner      : Ext.AccountIdentifier;
        txId       : Text;
    };

};