network=${1:-local}

dfx canister --network $network call legends configureLegends\
    "(vec {\

        record { border = \"saxon\"; back = \"saxon\"; ink = \"copper\"; };\
        record { border = \"saxon\"; back = \"saxon\"; ink = \"silver\"; };\
        record { border = \"saxon\"; back = \"saxon\"; ink = \"gold\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\"; ink = \"canopy\"; };\
        record { border = \"staggered\"; back = \"bordered-saxon\"; ink = \"rose\"; };\
        record { border = \"round\"; back = \"fate\"; ink = \"spice\"; };\
        record { border = \"staggered\"; back = \"fate\"; ink = \"midnight\"; };\

        record { border = \"thin\"; back = \"fate\"; ink = \"copper\"; };\
        record { border = \"thin\"; back = \"fate\"; ink = \"silver\"; };\
        record { border = \"bare\"; back = \"fate\"; ink = \"copper\"; };\
        record { border = \"bare\"; back = \"fate\"; ink = \"silver\"; };\
        record { border = \"round\"; back = \"fate\"; ink = \"copper\"; };\
        record { border = \"staggered\"; back = \"bordered-saxon\"; ink = \"gold\"; };\
        record { border = \"thicc\"; back = \"bordered-saxon\"; ink = \"copper\"; };\
        record { border = \"greek\"; back = \"bordered-saxon\"; ink = \"gold\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\"; ink = \"copper\"; };\
        record { border = \"saxon\"; back = \"saxon\"; ink = \"copper\"; };\

        record { border = \"thin\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"gold\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"gold\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"canopy\"; };\
        record { border = \"thin\"; back = \"fate\";	ink = \"spice\"; };\
        record { border = \"thin\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"thin\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"thin\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"thin\"; back = \"bordered-saxon\";	ink = \"silver\"; };\
        record { border = \"thin\"; back = \"bordered-saxon\";	ink = \"silver\"; };\
        record { border = \"thin\"; back = \"bordered-saxon\";	ink = \"gold\"; };\
        record { border = \"thin\"; back = \"bordered-saxon\";	ink = \"canopy\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"gold\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"canopy\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"canopy\"; };\
        record { border = \"bare\"; back = \"fate\";	ink = \"rose\"; };\
        record { border = \"bare\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"bare\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"bare\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"bare\"; back = \"bordered-saxon\";	ink = \"silver\"; };\
        record { border = \"bare\"; back = \"bordered-saxon\";	ink = \"silver\"; };\
        record { border = \"bare\"; back = \"bordered-saxon\";	ink = \"gold\"; };\
        record { border = \"bare\"; back = \"bordered-saxon\";	ink = \"canopy\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"gold\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"canopy\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"canopy\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"rose\"; };\
        record { border = \"round\"; back = \"fate\";	ink = \"spice\"; };\
        record { border = \"round\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"round\"; back = \"bordered-saxon\";	ink = \"silver\"; };\
        record { border = \"round\"; back = \"bordered-saxon\";	ink = \"gold\"; };\
        record { border = \"round\"; back = \"bordered-saxon\";	ink = \"canopy\"; };\
        record { border = \"staggered\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"staggered\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"staggered\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"staggered\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"staggered\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"staggered\"; back = \"fate\";	ink = \"gold\"; };\
        record { border = \"staggered\"; back = \"fate\";	ink = \"canopy\"; };\
        record { border = \"staggered\"; back = \"fate\";	ink = \"rose\"; };\
        record { border = \"staggered\"; back = \"fate\";	ink = \"midnight\"; };\
        record { border = \"staggered\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"staggered\"; back = \"bordered-saxon\";	ink = \"silver\"; };\
        record { border = \"staggered\"; back = \"bordered-saxon\";	ink = \"gold\"; };\
        record { border = \"staggered\"; back = \"bordered-saxon\";	ink = \"rose\"; };\
        record { border = \"thicc\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"thicc\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"thicc\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"thicc\"; back = \"fate\";	ink = \"gold\"; };\
        record { border = \"thicc\"; back = \"fate\";	ink = \"rose\"; };\
        record { border = \"thicc\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"thicc\"; back = \"bordered-saxon\";	ink = \"silver\"; };\
        record { border = \"thicc\"; back = \"bordered-saxon\";	ink = \"gold\"; };\
        record { border = \"thicc\"; back = \"bordered-saxon\";	ink = \"rose\"; };\
        record { border = \"greek\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"greek\"; back = \"fate\";	ink = \"copper\"; };\
        record { border = \"greek\"; back = \"fate\";	ink = \"silver\"; };\
        record { border = \"greek\"; back = \"fate\";	ink = \"gold\"; };\
        record { border = \"greek\"; back = \"fate\";	ink = \"spice\"; };\
        record { border = \"greek\"; back = \"bordered-saxon\";	ink = \"copper\"; };\
        record { border = \"greek\"; back = \"bordered-saxon\";	ink = \"silver\"; };\
        record { border = \"greek\"; back = \"bordered-saxon\";	ink = \"gold\"; };\
        record { border = \"greek\"; back = \"bordered-saxon\";	ink = \"rose\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"copper\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"copper\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"silver\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"silver\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"gold\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"gold\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"canopy\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"rose\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"spice\"; };\
        record { border = \"worn-saxon\"; back = \"worn-saxon\";	ink = \"midnight\"; };\
        record { border = \"saxon\"; back = \"saxon\";	ink = \"copper\"; };\
        record { border = \"saxon\"; back = \"saxon\";	ink = \"silver\"; };\
        record { border = \"saxon\"; back = \"saxon\";	ink = \"gold\"; };\
        record { border = \"saxon\"; back = \"saxon\";	ink = \"spice\"; };\
        record { border = \"saxon\"; back = \"saxon\";	ink = \"midnight\"; };\
    })"