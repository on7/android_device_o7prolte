add_lunch_combo lineage_o7prolte-userdebug
add_lunch_combo lineage_o7prolte-eng
sh device/samsung/o7prolte/patches/apply.sh
function o7prolte
{
export WITH_SU=true
lunch lineage_o7prolte-userdebug
make -j4 bacon
}
