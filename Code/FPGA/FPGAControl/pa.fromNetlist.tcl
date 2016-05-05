
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name FPGAControl -dir "C:/Users/Chris/Desktop/FPGACont/FPGAControl/planAhead_run_2" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Chris/Desktop/FPGACont/FPGAControl/Schematic_File.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Chris/Desktop/FPGACont/FPGAControl} }
set_property target_constrs_file "Constraints.ucf" [current_fileset -constrset]
add_files [list {Constraints.ucf}] -fileset [get_property constrset [current_run]]
link_design
