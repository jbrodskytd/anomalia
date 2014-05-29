//Maya ASCII 2014 scene
//Name: char9_geo.ma
//Last modified: Fri, May 30, 2014 12:35:36 AM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t 12fps;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28 21 28 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 44.82186966202994;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "cn_body_render_mesh";
	addAttr -ci true -sn "dr" -ln "dropoff" -dv 4 -min 0 -max 20 -at "double";
	addAttr -ci true -sn "smt" -ln "smoothness" -min 0 -at "double";
	addAttr -ci true -sn "ift" -ln "inflType" -dv 2 -min 1 -max 2 -at "short";
	setAttr -k on ".dr";
	setAttr -k on ".smt";
	setAttr ".ift" 1;
createNode mesh -n "cn_body_render_meshShape" -p "cn_body_render_mesh";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50655833940819606 0.49967969954013824 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 510 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.59355891 0.21409306 0.62765622
		 0.28049332 0.58051395 0.21679276 0.67729932 0.29530233 0.59802765 0.1663107 0.58096147
		 0.16678205 0.62114155 0.28826123 0.66289181 0.31094927 0.70042622 0.34474665 0.69115168
		 0.35363781 0.64040238 0.33468491 0.67245615 0.37105334 0.61754698 0.35837281 0.65254599
		 0.39232433 0.5953716 0.38101605 0.63270187 0.41549617 0.57310706 0.40351841 0.61219394
		 0.43953407 0.54871088 0.42805904 0.59072298 0.46581742 0.52484894 0.45202106 0.5691784
		 0.4923237 0.50635129 0.47054386 0.54980856 0.51449376 0.47849166 0.49836302 0.51810253
		 0.54310942 0.44477004 0.53135568 0.47971302 0.57165635 0.39994654 0.57429183 0.43023306
		 0.60951984 0.35391009 0.61779362 0.38000557 0.64825571 0.31146312 0.65784663 0.3353025
		 0.68340874 0.28377411 0.68343735 0.31099313 0.70418388 0.2768254 0.68972951 0.30432543
		 0.70929217 0.30117002 0.72164661 0.26342067 0.70193517 0.26036271 0.66403246 0.24839602
		 0.66584504 0.17990026 0.61685443 0.26530322 0.65798837 0.28778553 0.63363016 0.32624102
		 0.59083188 0.36795804 0.54342163 0.40763128 0.49663627 0.46396735 0.42941043 0.48575982
		 0.40977925 0.51225275 0.3879281 0.53848863 0.36633426 0.56220335 0.34587282 0.5848971
		 0.32613462 0.60522473 0.30658093 0.55527288 0.22305608 0.52706993 0.23370737 0.49840659
		 0.24768853 0.46897036 0.26306137 0.43738455 0.28054148 0.40369123 0.29841202 0.37091193
		 0.31443846 0.36165205 0.24607232 0.38560829 0.24035707 0.41531649 0.22933888 0.44637021
		 0.21495086 0.47624397 0.20015481 0.50874043 0.18516091 0.54540843 0.17230669 0.32767326
		 0.32909521 0.33925369 0.24698004 0.29954055 0.31643319 0.32507643 0.24329793 0.26998022
		 0.30835068 0.31607282 0.23845243 0.2971729 0.22332281 0.24798293 0.27063036 0.28144893
		 0.20438763 0.23257823 0.237517 0.26558971 0.17854464 0.21798582 0.20304421 0.25171253
		 0.14895621 0.20499484 0.17001763 0.23935454 0.11889231 0.19251834 0.13971499 0.2256396
		 0.086211115 0.17976291 0.11046675 0.20722617 0.050019413 0.16502459 0.083996773 0.1816809
		 0.01753515 0.14873813 0.063074142 0.16604878 0.0043481886 0.13989304 0.052387089
		 0.066902317 0.075106144 0.02543826 0.058130354 0.020265084 0.075779229 0.066638179
		 0.085910559 0.067298897 0.11175233 0.07093925 0.14162469 0.077156849 0.17255354 0.084217377
		 0.2039333 0.092655309 0.23653895 0.10079599 0.26852208 0.10611636 0.29548728 0.05318753
		 0.30367517 0.048271459 0.28030294 0.041221362 0.24885005 0.033497285 0.21500444 0.026427519
		 0.18236324 0.020305943 0.14749539 0.017258506 0.10986614 0.064271055 0.37536067 0.10709939
		 0.37482682 0.06349095 0.42585826 0.1015396 0.42983216 0.055354904 0.4810909 0.091330715
		 0.48764884 0.043990415 0.54098302 0.080977075 0.54411387 0.041005921 0.58673835 0.078629799
		 0.57857805 0.077957429 0.58751607 0.04390524 0.59797585 0.051021617 0.61518389 0.085479058
		 0.59763223 0.14144312 0.66620874 0.15581916 0.63334471 0.16506122 0.61058855 0.18017814
		 0.57498842 0.21560785 0.52135569 0.20405504 0.51652354 0.24290451 0.45752451 0.22927356
		 0.45208254 0.27001399 0.39169428 0.25297475 0.3855229 0.28670314 0.39906591 0.25636715
		 0.46348333 0.2270384 0.52650648 0.19542661 0.58157015 0.17023928 0.63945138 0.15683256
		 0.67262822 0.31796646 0.7992574 0.28142104 0.8084805 0.32207665 0.81457311 0.28568974
		 0.82505751 0.34869543 0.89151871 0.32568994 0.92596352 0.35800764 0.90061033 0.34256068
		 0.93526614 0.36767492 0.90152073 0.404652 0.90364242 0.38459522 0.79707074 0.46759188
		 0.90048432 0.44741631 0.77752471 0.5321756 0.89525235 0.51670557 0.75522166 0.59283161
		 0.89250863 0.5881834 0.73358202 0.63874286 0.89168155 0.65052724 0.72049344 0.67236239
		 0.71911663 0.749156 0.67112255 0.66147912 0.68784827 0.64292586 0.69442385 0.58244002
		 0.71532953 0.51176947 0.74058473 0.44327286 0.76512724 0.3812362 0.78613943 0.37767619
		 0.77539432 0.43878186 0.75289607 0.50627768 0.72614187 0.57546473 0.69750106 0.63212305
		 0.66963845 0.64931411 0.65833884 0.73827565 0.6429069 0.66402054 0.61340302 0.74063462
		 0.59440583 0.67999727 0.57871926 0.74986917 0.56532151 0.69751137 0.54418063 0.76345772
		 0.53529328 0.71485507 0.51237613 0.77841824 0.50617468 0.73028749 0.48310673 0.79433066
		 0.47442973 0.74458408 0.45453244 0.80954874 0.43732578 0.75548846 0.42637071 0.81757897
		 0.39839828 0.7613818 0.40062895 0.76342756 0.38980734 0.81621963 0.37630013 0.73676848
		 0.61893886 0.74270606 0.65731794 0.71265554 0.74530518 0.76594424 0.69044769 0.74778765
		 0.76200807 0.78627735 0.70681846 0.78477544 0.77856457 0.81472576 0.72446603 0.8200838
		 0.79384321 0.84713322 0.74094057 0.8523404 0.80884492 0.8796156 0.75617373 0.88293868
		 0.82430339 0.91485542 0.77368987 0.91026139 0.8417654 0.95241731 0.79728937 0.93165261
		 0.85978359 0.98315912 0.82717824 0.94205171 0.86867106 0.99585819 0.84745812 0.91245371
		 0.94299293 0.92484099 0.99160659 0.90072018 0.942972 0.90857935 0.99408388 0.87367147
		 0.94118673 0.87273568 0.99442691 0.84281749 0.93598378 0.83444542 0.98929858 0.81076115
		 0.92826605 0.79904687 0.98212415 0.77811515 0.91992617 0.76538068 0.97444344 0.74365228
		 0.91026866 0.73034579 0.96657121 0.70941991 0.90117103 0.69718671 0.9598918 0.68054003
		 0.89540148 0.67183828 0.95526385 0.5901528 0.94218063 0.53328526 0.93987507 0.47020984
		 0.94337589 0.40128577 0.94631892 0.35238022 0.93905413 0.60571766 0.2499101 0.22678535
		 0.64964646 0.21221142 0.67098707 0.57511282 0.60637391 0.59284526 0.59074068 0.73934317
		 0.35153911 0.39147574 0.38584784 0.5114485 0.50898832 0.69543874 0.64438939 0.58826548
		 0.19099465 0.29397953 0.6966607 0.11258934 0.60153192 0.10844073 0.62809235 0.64463508
		 0.80608749 0.66859591 0.80771595;
	setAttr ".uvst[0].uvsp[250:499]" 0.94380111 0.91268218 0.044810962 0.073731571
		 0.96318036 0.85077274 0.18745604 0.30898064 0.65334153 0.92194068 0.71601391 0.69885153
		 0.92171955 0.90360492 0.10554291 0.069119483 0.35515586 0.9191128 0.29032037 0.75518525
		 0.62413549 0.23904985 0.46896017 0.46656749 0.33893412 0.28628367 0.6472472 0.29375154
		 0.78965199 0.39128366 0.45735827 0.47937566 0.32053792 0.8642782 0.099570595 0.047492944
		 0.91164851 0.96791381 0.15909022 0.034336142 0.082578227 0.32017243 0.2897504 0.26837021
		 0.060374595 0.5877021 0.72909683 0.37220517 0.68294227 0.326159 0.3762033 0.40309671
		 0.4982971 0.52073622 0.18818998 0.33021396 0.63623774 0.92020005 0.084015518 0.33481014
		 0.32018387 0.7445153 0.35281396 0.85905504 0.27156636 0.67379689 0.61060756 0.24729319
		 0.62439889 0.28437728 0.60082775 0.252527 0.58703643 0.21544291 0.17506978 0.62815291
		 0.22505516 0.63846779 0.26283297 0.66101038 0.21172683 0.65363222 0.25590834 0.6838901
		 0.21269599 0.68834192 0.16353592 0.65603983 0.53262854 0.53128815 0.65306193 0.65019333
		 0.73192692 0.367277 0.6888628 0.32002449 0.74675947 0.33580124 0.78982359 0.38305372
		 0.26859406 0.67688096 0.60691452 0.56394839 0.44765186 0.44644648 0.33529967 0.32524922
		 0.4902685 0.48668849 0.7378155 0.63858551 0.69379485 0.65062284 0.52807993 0.49251881
		 0.58073771 0.19178741 0.58949459 0.16654637 0.59579325 0.19020188 0.70209259 0.6725831
		 0.31618178 0.34580508 0.29256269 0.33505172 0.33442271 0.78898501 0.33737075 0.7993269
		 0.29057541 0.69951081 0.28029975 0.6865834 0.29738361 0.69381058 0.30765927 0.706738
		 0.12064911 0.61548847 0.078293614 0.58304703 0.12184551 0.59458327 0.16044019 0.6219666
		 0.14863114 0.6497767 0.09623237 0.64069629 0.068250336 0.60640806 0.68028569 0.72302443
		 0.65690607 0.89240754 0.96895492 0.85806459 0.96034956 0.91953236 0.91864735 0.96729976
		 0.92725271 0.90583199 0.046170287 0.066618249 0.066770248 0.080508351 0.04345163
		 0.080844894 0.022851672 0.066954792 0.060931332 0.59274596 0.93685216 0.86422729
		 0.95740587 0.84348094 0.98950863 0.83731818 0.26681072 0.30079025 0.10810135 0.31717104
		 0.64977694 0.95147389 0.71075916 0.69511962 0.75174212 0.67467856 0.90658695 0.94298244
		 0.91618639 0.9013778 0.14431559 0.057730615 0.10768816 0.07449235 0.10339768 0.063746616
		 0.26779503 0.32795626 0.34034011 0.80975592 0.36284128 0.90106553 0.36002755 0.92028743
		 0.34747046 0.93716013 0.35028416 0.91793823 0.27173954 0.75246954 0.28229535 0.71179092
		 0.30890119 0.75790107 0.29969376 0.80386895 0.63766348 0.23080651 0.65247774 0.28789783
		 0.34256855 0.24731812 0.33346349 0.28803763 0.67009556 0.3031258 0.64201665 0.29960525
		 0.8168993 0.38734919 0.78948039 0.3995136 0.76240468 0.39521813 0.31230849 0.27986556
		 0.43622488 0.4603883 0.30568984 0.87551051 0.30388319 0.81981528 0.33538604 0.85304594
		 0.33719268 0.90874112 0.095743522 0.031239271 0.15297091 0.028367639 0.91671014 0.99284524
		 0.90464973 0.96852791 0.17386484 0.010941669 0.16520952 0.040304646 0.057055112 0.32317382
		 0.31269014 0.2359502 0.29302651 0.27340156 0.04245558 0.5923571 0.059817858 0.58265817
		 0.72626674 0.37713337 0.69578898 0.34919223 0.67702174 0.33229354 0.58024883 0.26481849
		 0.55034065 0.19768138 0.0422787 0.11080924 0.93133938 0.81952739 0.89196646 0.89147604
		 0.11616175 0.097874552 0.62281358 0.32063293 0.78251863 0.43184823 0.87320358 0.96780682
		 0.18612538 0.067008093 0.71397233 0.39871204 0.65642929 0.35286912 0.55598354 0.279921
		 0.51790518 0.20943414 0.045622595 0.14456004 0.89889705 0.79899663 0.86287808 0.88014358
		 0.12535109 0.12604572 0.60122204 0.34225371 0.76945734 0.46448109 0.83863145 0.96264118
		 0.20270126 0.098338932 0.69856501 0.42342839 0.63504648 0.37534857 0.53030497 0.29678068
		 0.48732528 0.22392167 0.051792182 0.17745839 0.865978 0.78250933 0.83155078 0.86855549
		 0.1348376 0.15613426 0.57878745 0.36344445 0.75435287 0.49464071 0.80490398 0.95519507
		 0.21593644 0.12930365 0.68149471 0.44930145 0.61403674 0.39825612 0.50372946 0.3146978
		 0.45767027 0.23900612 0.058857329 0.20946887 0.83360851 0.76739192 0.79909945 0.85688472
		 0.14460611 0.18697546 0.55579782 0.38492632 0.73915637 0.52383471 0.77174795 0.9471848
		 0.22835368 0.15948692 0.66352451 0.4759551 0.59265053 0.42152625 0.47481865 0.33423477
		 0.42635053 0.25494018 0.066938333 0.2426945 0.79975057 0.75151527 0.76421386 0.84441662
		 0.15532057 0.21979158 0.53048182 0.40799356 0.72369027 0.55475104 0.73699903 0.93841994
		 0.24178776 0.19079442 0.64411718 0.50499904 0.56971693 0.44693822 0.44472551 0.35409564
		 0.39464974 0.26938456 0.074533723 0.27441251 0.7670325 0.73441327 0.72860378 0.83158958
		 0.16668712 0.25301954 0.5053044 0.43090016 0.71031594 0.58656251 0.70330334 0.93053138
		 0.25701359 0.22095232 0.62458783 0.53552151 0.54701364 0.47217238 0.41743964 0.37192446
		 0.36628199 0.28025538 0.079651944 0.29958123 0.73929989 0.71787643 0.69659781 0.82035333
		 0.17704965 0.28305882 0.48515934 0.44997716 0.70039451 0.61617094 0.67618918 0.92533267
		 0.27257791 0.24697658 0.52758884 0.6345787 0.10858493 0.33247173 0.59050751 0.81304532
		 0.6337325 0.94871855 0.42620069 0.51399601 0.059446115 0.33714855 0.34716719 0.44785109
		 0.46224153 0.55150604 0.18003707 0.38017485 0.59149224 0.91734463 0.085685223 0.37509376
		 0.46825534 0.66783082 0.52444059 0.82523704 0.38395229 0.55885673 0.31216261 0.50345254
		 0.41508979 0.59190577 0.16540658 0.44095734 0.53273046 0.91756368 0.08251527 0.42784518
		 0.40939373 0.70057583 0.45750409 0.83900452 0.34007555 0.60431278 0.2766397 0.55866915
		 0.36695784 0.63302463 0.14769289 0.50208616 0.46890089 0.92193007 0.073342808 0.48436984
		 0.35648936 0.72940147;
	setAttr ".uvst[0].uvsp[500:509]" 0.39462358 0.85035658 0.29962429 0.64573836
		 0.2441358 0.60873008 0.32338279 0.67062765 0.13057761 0.55955118 0.40296888 0.92498064
		 0.062483743 0.54254848 0.27453867 0.67071283 0.31232917 0.73101181 0.3530378 0.8750937;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 457 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.078133337 0.0088938456 ;
	setAttr ".pt[1]" -type "float3" 0 -0.064143836 0.0073996405 ;
	setAttr ".pt[2]" -type "float3" 0.0034239581 -1.2103162 0.27338043 ;
	setAttr ".pt[3]" -type "float3" 0.00063224119 0 0.13428715 ;
	setAttr ".pt[4]" -type "float3" 0.085205317 0 0.13289919 ;
	setAttr ".pt[5]" -type "float3" 0.00063224119 0 -0.13066244 ;
	setAttr ".pt[6]" -type "float3" 0.072748676 0 -0.12516829 ;
	setAttr ".pt[7]" -type "float3" 0.0017396758 -1.2106504 -0.26777303 ;
	setAttr ".pt[8]" -type "float3" 0 -0.076784752 -0.0085343588 ;
	setAttr ".pt[9]" -type "float3" 0 -0.076784752 -0.0085429456 ;
	setAttr ".pt[10]" -type "float3" 0.13060103 0 0.14241385 ;
	setAttr ".pt[11]" -type "float3" 0.1345578 0 -0.12474937 ;
	setAttr ".pt[12]" -type "float3" 0 -1.1875875 -0.24625051 ;
	setAttr ".pt[13]" -type "float3" 0 -1.1902461 0.25838104 ;
	setAttr ".pt[14]" -type "float3" 0 -0.067783386 0.0077405903 ;
	setAttr ".pt[15]" -type "float3" 0 -0.065501198 0.0074501825 ;
	setAttr ".pt[16]" -type "float3" -0.0071741212 0 0.13431302 ;
	setAttr ".pt[17]" -type "float3" -0.0042721559 -1.2106504 0.27760807 ;
	setAttr ".pt[18]" -type "float3" -0.14875774 0 0.12903866 ;
	setAttr ".pt[19]" -type "float3" -0.10100168 0 0.1272773 ;
	setAttr ".pt[20]" -type "float3" -0.099994019 0 -0.12320383 ;
	setAttr ".pt[21]" -type "float3" -0.0065513356 0 -0.13276954 ;
	setAttr ".pt[22]" -type "float3" -0.0038017835 -1.2106504 -0.26185876 ;
	setAttr ".pt[23]" -type "float3" -0.14875774 0 -0.12474602 ;
	setAttr ".pt[24]" -type "float3" 0 -0.078133337 -0.0086701168 ;
	setAttr ".pt[25]" -type "float3" 0 -0.073026985 -0.0080870539 ;
	setAttr ".pt[26]" -type "float3" 0 0 0.0023223511 ;
	setAttr ".pt[27]" -type "float3" 0.079257406 0 0.0028020258 ;
	setAttr ".pt[28]" -type "float3" 0 -0.021856008 5.1236737e-005 ;
	setAttr ".pt[29]" -type "float3" 0 -0.024844311 5.9371381e-005 ;
	setAttr ".pt[30]" -type "float3" -0.0049281339 -1.2136356 0.002587188 ;
	setAttr ".pt[31]" -type "float3" 0.14162554 0 0.0032137048 ;
	setAttr ".pt[32]" -type "float3" -0.0049281339 -1.2059655 0.0025930852 ;
	setAttr ".pt[33]" -type "float3" -0.12038351 0 0.0029970794 ;
	setAttr ".pt[34]" -type "float3" 0 0 0.0023002939 ;
	setAttr ".pt[35]" -type "float3" 0 -0.018683689 4.4565772e-005 ;
	setAttr ".pt[36]" -type "float3" 0 -0.021856008 5.1724313e-005 ;
	setAttr ".pt[37]" -type "float3" -0.16366854 0 0.0032484869 ;
	setAttr ".pt[38]" -type "float3" -0.0049281339 -1.2136356 0.0026000522 ;
	setAttr ".pt[39]" -type "float3" 0 -0.12524889 -0.015356129 ;
	setAttr ".pt[40]" -type "float3" 0 -0.13228092 -0.016178358 ;
	setAttr ".pt[41]" -type "float3" 0 -0.13137151 0.016258823 ;
	setAttr ".pt[42]" -type "float3" 0 -0.11162934 0.014059274 ;
	setAttr ".pt[43]" -type "float3" 0 -0.12139514 -0.014863971 ;
	setAttr ".pt[44]" -type "float3" 0 -0.13228092 -0.01623166 ;
	setAttr ".pt[45]" -type "float3" 0 -0.10766344 0.013333139 ;
	setAttr ".pt[46]" -type "float3" 0 -0.10766344 0.013427914 ;
	setAttr ".pt[47]" -type "float3" 0 -0.11162934 0.00023046568 ;
	setAttr ".pt[48]" -type "float3" 0 -0.10387796 0.00021242343 ;
	setAttr ".pt[49]" -type "float3" 0 -0.093395129 0.00019759798 ;
	setAttr ".pt[50]" -type "float3" 0 -0.10069653 0.00021062588 ;
	setAttr ".pt[51]" -type "float3" 0 -0.29313305 -0.034178469 ;
	setAttr ".pt[52]" -type "float3" 0 -0.26747665 -0.031740475 ;
	setAttr ".pt[53]" -type "float3" 0 -0.26042402 -0.030490804 ;
	setAttr ".pt[54]" -type "float3" 0 -0.28659341 -0.033551231 ;
	setAttr ".pt[55]" -type "float3" 0 -0.25070918 0.00040823995 ;
	setAttr ".pt[56]" -type "float3" 0 -0.25785547 0.00041408592 ;
	setAttr ".pt[57]" -type "float3" 0 -0.26747665 0.031441182 ;
	setAttr ".pt[58]" -type "float3" 0 -0.26830569 0.032378897 ;
	setAttr ".pt[59]" -type "float3" 0 -0.24596098 0.028951351 ;
	setAttr ".pt[60]" -type "float3" 0 -0.27293137 0.031996194 ;
	setAttr ".pt[61]" -type "float3" 0 -0.23671024 0.00038657087 ;
	setAttr ".pt[62]" -type "float3" 0 -0.25315541 0.00039980921 ;
	setAttr ".pt[63]" -type "float3" 0 -0.50232065 -0.058385849 ;
	setAttr ".pt[64]" -type "float3" 0.0013941416 -0.48522094 -0.058813415 ;
	setAttr ".pt[65]" -type "float3" -0.0013090847 -0.47512057 -0.05686371 ;
	setAttr ".pt[66]" -type "float3" 0 -0.51126516 -0.058820304 ;
	setAttr ".pt[67]" -type "float3" 0.0057702633 -0.47552067 0.00078643672 ;
	setAttr ".pt[68]" -type "float3" 0 -0.44312847 0.00068014523 ;
	setAttr ".pt[69]" -type "float3" 0 -0.47900081 0.05582425 ;
	setAttr ".pt[70]" -type "float3" 0.0016468667 -0.46745673 0.057586949 ;
	setAttr ".pt[71]" -type "float3" -0.0016209198 -0.46601945 0.056477424 ;
	setAttr ".pt[72]" -type "float3" 0 -0.47512057 0.056588784 ;
	setAttr ".pt[73]" -type "float3" -0.0059729116 -0.44504112 0.00073978677 ;
	setAttr ".pt[74]" -type "float3" 0 -0.46005747 0.00069938623 ;
	setAttr ".pt[75]" -type "float3" 0 -0.70237881 -0.083351672 ;
	setAttr ".pt[76]" -type "float3" 0.0058526825 -0.69344676 -0.086184822 ;
	setAttr ".pt[77]" -type "float3" -0.0065513356 -0.70843011 -0.087018006 ;
	setAttr ".pt[78]" -type "float3" 0 -0.70237881 -0.082237214 ;
	setAttr ".pt[79]" -type "float3" 0.013738582 -0.6756593 0.0012039742 ;
	setAttr ".pt[80]" -type "float3" 0 -0.66251445 0.0010577642 ;
	setAttr ".pt[81]" -type "float3" 0 -0.69515371 0.082842618 ;
	setAttr ".pt[82]" -type "float3" 0.0067205136 -0.68033403 0.085828543 ;
	setAttr ".pt[83]" -type "float3" -0.007593371 -0.70531225 0.087849982 ;
	setAttr ".pt[84]" -type "float3" 0 -0.69421256 0.084651493 ;
	setAttr ".pt[85]" -type "float3" -0.015861321 -0.66997474 0.0012039352 ;
	setAttr ".pt[86]" -type "float3" 0 -0.66823852 0.0010682388 ;
	setAttr ".pt[87]" -type "float3" 0 -0.90179592 -0.1121548 ;
	setAttr ".pt[88]" -type "float3" 0.014557062 -0.89273345 -0.11601627 ;
	setAttr ".pt[89]" -type "float3" -0.015861321 -0.89620787 -0.11484904 ;
	setAttr ".pt[90]" -type "float3" 0 -0.89110053 -0.10865857 ;
	setAttr ".pt[91]" -type "float3" 0.028336573 -0.89389133 0.0017613627 ;
	setAttr ".pt[92]" -type "float3" 0 -0.86009932 0.0014545501 ;
	setAttr ".pt[93]" -type "float3" 0 -0.88975579 0.11116143 ;
	setAttr ".pt[94]" -type "float3" 0.016825477 -0.89389133 0.11844226 ;
	setAttr ".pt[95]" -type "float3" -0.016648062 -0.88975579 0.11544985 ;
	setAttr ".pt[96]" -type "float3" 0 -0.89646173 0.1150675 ;
	setAttr ".pt[97]" -type "float3" -0.029870821 -0.86952978 0.001726517 ;
	setAttr ".pt[98]" -type "float3" 0 -0.86640334 0.0014822508 ;
	setAttr ".pt[99]" -type "float3" 0 -1.0513237 -0.14190513 ;
	setAttr ".pt[100]" -type "float3" 0.033585858 -1.0641056 -0.15237996 ;
	setAttr ".pt[101]" -type "float3" -0.038173471 -1.0730802 -0.15254211 ;
	setAttr ".pt[102]" -type "float3" 0 -1.0513237 -0.1391726 ;
	setAttr ".pt[103]" -type "float3" 0.053273011 -1.061859 0.0023617235 ;
	setAttr ".pt[104]" -type "float3" 0 -1.035259 0.0018610214 ;
	setAttr ".pt[105]" -type "float3" 0 -1.0485636 0.1425201 ;
	setAttr ".pt[106]" -type "float3" 0.037241049 -1.0665096 0.15634036 ;
	setAttr ".pt[107]" -type "float3" -0.038426742 -1.0683646 0.15327667 ;
	setAttr ".pt[108]" -type "float3" 0 -1.0609154 0.1498681 ;
	setAttr ".pt[109]" -type "float3" -0.055734724 -1.0471588 0.0023508333 ;
	setAttr ".pt[110]" -type "float3" 0 -1.0359442 0.0018871331 ;
	setAttr ".pt[111]" -type "float3" 0 -1.1535565 -0.17960028 ;
	setAttr ".pt[112]" -type "float3" 0.069116287 -1.1643677 -0.19535094 ;
	setAttr ".pt[113]" -type "float3" -0.069472194 -1.1567982 -0.18742028 ;
	setAttr ".pt[114]" -type "float3" 0 -1.1535565 -0.17594495 ;
	setAttr ".pt[115]" -type "float3" 0.094601221 -1.1655381 0.0030122981 ;
	setAttr ".pt[116]" -type "float3" 0 -1.1551888 0.0022422059 ;
	setAttr ".pt[117]" -type "float3" 0 -1.1582685 0.18400693 ;
	setAttr ".pt[118]" -type "float3" 0.067076176 -1.1544307 0.19285598 ;
	setAttr ".pt[119]" -type "float3" -0.069472194 -1.1582685 0.18914819 ;
	setAttr ".pt[120]" -type "float3" 0 -1.1567982 0.18811558 ;
	setAttr ".pt[121]" -type "float3" -0.098691165 -1.1591018 0.0030114539 ;
	setAttr ".pt[122]" -type "float3" 0 -1.1567982 0.0022788269 ;
	setAttr ".pt[123]" -type "float3" 0 -1.1987396 -0.21311927 ;
	setAttr ".pt[124]" -type "float3" 0.10905902 -1.2020562 -0.23469423 ;
	setAttr ".pt[125]" -type "float3" -0.11379953 -1.2034917 -0.22881615 ;
	setAttr ".pt[126]" -type "float3" -0.0013090847 -1.2008539 -0.21329348 ;
	setAttr ".pt[127]" -type "float3" 0.14523453 -1.2034917 0.0036148764 ;
	setAttr ".pt[128]" -type "float3" 0 -1.2008539 0.0025146133 ;
	setAttr ".pt[129]" -type "float3" 0.00098741916 -1.2020562 0.21800302 ;
	setAttr ".pt[130]" -type "float3" 0.10511135 -1.1987396 0.23119913 ;
	setAttr ".pt[131]" -type "float3" -0.11578234 -1.2034917 0.23179658 ;
	setAttr ".pt[132]" -type "float3" -0.00064668269 -1.2024277 0.22842024 ;
	setAttr ".pt[133]" -type "float3" -0.15400742 -1.2024277 0.0036428934 ;
	setAttr ".pt[134]" -type "float3" 0 -1.2008539 0.0025566369 ;
	setAttr ".pt[135]" -type "float3" 0.010441996 -1.2024277 -0.32325071 ;
	setAttr ".pt[136]" -type "float3" 0.17640704 -1.2075168 -0.29366264 ;
	setAttr ".pt[137]" -type "float3" -0.00067684345 -1.1726564 -0.31455451 ;
	setAttr ".pt[138]" -type "float3" -0.015692236 -1.2034917 -0.31760269 ;
	setAttr ".pt[139]" -type "float3" -0.18677777 -1.2059655 -0.28830177 ;
	setAttr ".pt[140]" -type "float3" 0.24273847 -1.2034917 0.0045944615 ;
	setAttr ".pt[141]" -type "float3" 0.056651499 -1.0780767 0.42792004 ;
	setAttr ".pt[142]" -type "float3" 0.30928177 -1.1118091 0.38997021 ;
	setAttr ".pt[143]" -type "float3" -0.0073247906 -1.0656768 0.42387152 ;
	setAttr ".pt[144]" -type "float3" -0.068737805 -1.0925922 0.43076062 ;
	setAttr ".pt[145]" -type "float3" -0.31778279 -1.1189318 0.38047361 ;
	setAttr ".pt[146]" -type "float3" -0.42595589 -1.1153328 0.0059557897 ;
	setAttr ".pt[147]" -type "float3" 0.052497551 -1.0784036 -0.4257696 ;
	setAttr ".pt[148]" -type "float3" 0.29976881 -1.1209508 -0.38434097 ;
	setAttr ".pt[149]" -type "float3" -0.0080186566 -1.0485636 -0.41860494 ;
	setAttr ".pt[150]" -type "float3" -0.06636247 -1.0833608 -0.42067987 ;
	setAttr ".pt[151]" -type "float3" -0.31502694 -1.1222782 -0.38076052 ;
	setAttr ".pt[152]" -type "float3" 0.41054285 -1.1068671 0.005976575 ;
	setAttr ".pt[153]" -type "float3" 0.12325402 -0.72929031 0.49762022 ;
	setAttr ".pt[154]" -type "float3" 0.42907798 -0.79033595 0.44193274 ;
	setAttr ".pt[155]" -type "float3" -0.010905416 -0.70622957 0.49446088 ;
	setAttr ".pt[156]" -type "float3" -0.13850692 -0.74915987 0.50101262 ;
	setAttr ".pt[157]" -type "float3" -0.4502621 -0.78043103 0.44223708 ;
	setAttr ".pt[158]" -type "float3" -0.59397435 -0.77147228 0.0069209109 ;
	setAttr ".pt[159]" -type "float3" 0.11494676 -0.7248531 -0.50140935 ;
	setAttr ".pt[160]" -type "float3" 0.42198417 -0.7916618 -0.44277519 ;
	setAttr ".pt[161]" -type "float3" -0.014343461 -0.67233098 -0.49549517 ;
	setAttr ".pt[162]" -type "float3" -0.1386966 -0.7191053 -0.5001902 ;
	setAttr ".pt[163]" -type "float3" -0.44287568 -0.78355998 -0.44357377 ;
	setAttr ".pt[164]" -type "float3" 0.56999576 -0.76417768 0.0069197039 ;
	setAttr ".pt[165]" -type "float3" 0.12115546 -0.24209724 0.41806912 ;
	setAttr ".pt[166]" -type "float3" 0.4506802 -0.28505677 0.36438301 ;
	setAttr ".pt[167]" -type "float3" -0.012491395 -0.23278372 0.42128068 ;
	setAttr ".pt[168]" -type "float3" -0.14205633 -0.25785547 0.42194742 ;
	setAttr ".pt[169]" -type "float3" -0.4702498 -0.29044658 0.37114751 ;
	setAttr ".pt[170]" -type "float3" -0.59397435 -0.27902427 0.0065754852 ;
	setAttr ".pt[171]" -type "float3" 0.11198433 -0.24507183 -0.43084821 ;
	setAttr ".pt[172]" -type "float3" 0.44377977 -0.29086426 -0.36642808 ;
	setAttr ".pt[173]" -type "float3" -0.017520245 -0.21194775 -0.42764869 ;
	setAttr ".pt[174]" -type "float3" -0.14162108 -0.24596098 -0.42823324 ;
	setAttr ".pt[175]" -type "float3" -0.46464559 -0.28457552 -0.36926797 ;
	setAttr ".pt[176]" -type "float3" 0.56999576 -0.27225602 0.0065322849 ;
	setAttr ".pt[177]" -type "float3" 0.027115708 0 0.22821192 ;
	setAttr ".pt[178]" -type "float3" 0.31793931 -0.0033290093 0.19420896 ;
	setAttr ".pt[179]" -type "float3" -0.085593618 -0.0017094992 0.22713849 ;
	setAttr ".pt[180]" -type "float3" -0.33570513 -0.0033290093 0.19420971 ;
	setAttr ".pt[181]" -type "float3" -0.40080854 -0.0030062357 0.0042787138 ;
	setAttr ".pt[182]" -type "float3" 0.062564798 0 -0.23237228 ;
	setAttr ".pt[183]" -type "float3" 0.31793931 -0.0051465821 -0.19294205 ;
	setAttr ".pt[184]" -type "float3" -0.011653922 0 -0.23424445 ;
	setAttr ".pt[185]" -type "float3" -0.081902288 0 -0.23008551 ;
	setAttr ".pt[186]" -type "float3" -0.33817944 -0.0055602118 -0.19569205 ;
	setAttr ".pt[187]" -type "float3" 0.38002631 -0.0017094992 0.00425281 ;
	setAttr ".pt[188]" -type "float3" 0.18056132 0 -0.15101664 ;
	setAttr ".pt[189]" -type "float3" -0.19641374 0 -0.15116209 ;
	setAttr ".pt[190]" -type "float3" 0.22890794 0 0.0035971773 ;
	setAttr ".pt[191]" -type "float3" 0.0088026887 0 0.17309438 ;
	setAttr ".pt[192]" -type "float3" 0.17592947 0 0.15366115 ;
	setAttr ".pt[193]" -type "float3" -0.030419577 0 0.17231902 ;
	setAttr ".pt[194]" -type "float3" -0.19451761 0 0.15426004 ;
	setAttr ".pt[195]" -type "float3" -0.23291957 0 0.0035519965 ;
	setAttr ".pt[196]" -type "float3" 0 -0.060616691 0.0080590956 ;
	setAttr ".pt[197]" -type "float3" 0.039939955 0 0.1389806 ;
	setAttr ".pt[198]" -type "float3" 0.039939955 0 -0.13284199 ;
	setAttr ".pt[199]" -type "float3" 0 -0.071939886 -0.0093770856 ;
	setAttr ".pt[200]" -type "float3" 0.011160569 -1.2034917 0.32279927 ;
	setAttr ".pt[201]" -type "float3" 0.015394611 0 -0.1664535 ;
	setAttr ".pt[202]" -type "float3" 0.0020753834 -1.2136356 -0.24757835 ;
	setAttr ".pt[203]" -type "float3" 0.14533217 -1.2136356 -0.2676312 ;
	setAttr ".pt[204]" -type "float3" 0 0 0.070323862 ;
	setAttr ".pt[205]" -type "float3" 0.072593167 0 0.077741221 ;
	setAttr ".pt[206]" -type "float3" 0 -0.045763828 -0.0032046402 ;
	setAttr ".pt[207]" -type "float3" 0 -0.043443646 -0.0030512461 ;
	setAttr ".pt[208]" -type "float3" -0.0049281339 -1.2136356 -0.11586417 ;
	setAttr ".pt[209]" -type "float3" 0.0037933693 -1.2136356 0.2503984 ;
	setAttr ".pt[210]" -type "float3" 0.14533217 -1.2136356 0.26781133 ;
	setAttr ".pt[211]" -type "float3" 0 -0.10069653 0.01257689 ;
	setAttr ".pt[212]" -type "float3" 0 -0.081256904 0.010383973 ;
	setAttr ".pt[213]" -type "float3" 0.13122833 0 0.081786767 ;
	setAttr ".pt[214]" -type "float3" 0.18258272 -1.205386 0.29832661 ;
	setAttr ".pt[215]" -type "float3" 0.15294565 0 -0.14523724 ;
	setAttr ".pt[216]" -type "float3" -0.0049281339 -1.205386 -0.11371485 ;
	setAttr ".pt[217]" -type "float3" -0.00063350081 -1.177669 0.3235451 ;
	setAttr ".pt[218]" -type "float3" -0.0020621077 0 -0.16672468 ;
	setAttr ".pt[219]" -type "float3" 0 -0.056024663 0.0074446304 ;
	setAttr ".pt[220]" -type "float3" -0.018456761 -1.205386 0.33162668 ;
	setAttr ".pt[221]" -type "float3" -0.18997863 -1.205386 0.29179752 ;
	setAttr ".pt[222]" -type "float3" -0.055734724 0 0.13861552 ;
	setAttr ".pt[223]" -type "float3" -0.11278082 0 0.078537554 ;
	setAttr ".pt[224]" -type "float3" -0.060964413 0 -0.1376895 ;
	setAttr ".pt[225]" -type "float3" 0 0 0.069909737 ;
	setAttr ".pt[226]" -type "float3" -0.024129981 0 -0.16765359 ;
	setAttr ".pt[227]" -type "float3" -0.16688266 0 -0.14523961 ;
	setAttr ".pt[228]" -type "float3" -0.14968102 -1.2136356 -0.25917363 ;
	setAttr ".pt[229]" -type "float3" -0.0059729116 -1.2136356 -0.24515274 ;
	setAttr ".pt[230]" -type "float3" 0 -0.076784752 -0.0098437304 ;
	setAttr ".pt[231]" -type "float3" 0 -0.038788818 -0.0027216328 ;
	setAttr ".pt[232]" -type "float3" 0 -0.04468894 -0.0031461429 ;
	setAttr ".pt[233]" -type "float3" -0.15400742 0 0.082896367 ;
	setAttr ".pt[234]" -type "float3" -0.15155867 -1.2136356 0.26194423 ;
	setAttr ".pt[235]" -type "float3" -0.0046587638 -1.2136356 0.2597225 ;
	setAttr ".pt[236]" -type "float3" 0 -1.2136356 -0.1132085 ;
	setAttr ".pt[237]" -type "float3" 0 -0.086882681 0.010829975 ;
	setAttr ".pt[238]" -type "float3" 0 -0.090733208 0.011375824 ;
	setAttr ".pt[239]" -type "float3" 0 0 -0.06495291 ;
	setAttr ".pt[240]" -type "float3" 0.073723741 0 -0.071345583 ;
	setAttr ".pt[241]" -type "float3" 0 -0.045763828 0.0033824935 ;
	setAttr ".pt[242]" -type "float3" 0 -0.035043653 0.0026156323 ;
	setAttr ".pt[243]" -type "float3" -0.0049281339 -1.2136356 0.12373155 ;
	setAttr ".pt[244]" -type "float3" 0.13321352 0 -0.076565214 ;
	setAttr ".pt[245]" -type "float3" -0.0049281339 -1.2059655 0.12388781 ;
	setAttr ".pt[246]" -type "float3" -0.11183073 0 -0.072713032 ;
	setAttr ".pt[247]" -type "float3" 0 0 -0.066073619 ;
	setAttr ".pt[248]" -type "float3" 0 -0.035043653 0.002588057 ;
	setAttr ".pt[249]" -type "float3" 0 -0.040377364 0.0029989548 ;
	setAttr ".pt[250]" -type "float3" -0.15432194 0 -0.077425078 ;
	setAttr ".pt[251]" -type "float3" -0.0049281339 -1.2136356 0.12424678 ;
	setAttr ".pt[252]" -type "float3" 0.018446526 0 0.0024707597 ;
	setAttr ".pt[254]" -type "float3" 0.18943678 -1.2136356 0.0040895385 ;
	setAttr ".pt[255]" -type "float3" 0 -1.2136356 0.0026467601 ;
	setAttr ".pt[256]" -type "float3" 0.18738784 0 0.0034369642 ;
	setAttr ".pt[257]" -type "float3" -0.025680168 0 0.0024563125 ;
	setAttr ".pt[259]" -type "float3" -0.20134148 -1.2136356 0.0041257949 ;
	setAttr ".pt[260]" -type "float3" 0 -1.2136356 0.0026660447 ;
	setAttr ".pt[261]" -type "float3" 0 -0.074423835 0.00016862902 ;
	setAttr ".pt[262]" -type "float3" 0 -0.082629465 0.00018475394 ;
	setAttr ".pt[263]" -type "float3" -0.25190118 -1.205386 0.0045833294 ;
	setAttr ".pt[264]" -type "float3" 0 -0.10570609 -0.013009547 ;
	setAttr ".pt[265]" -type "float3" 0 -0.09937752 -0.012243126 ;
	setAttr ".pt[266]" -type "float3" 0 -0.093395129 -0.011504008 ;
	setAttr ".pt[267]" -type "float3" 0 -0.098764919 -0.012199189 ;
	setAttr ".pt[268]" -type "float3" 0 -0.082629465 0.00018596217 ;
	setAttr ".pt[269]" -type "float3" 0 -0.078133337 0.00017257343 ;
	setAttr ".pt[270]" -type "float3" 0 -0.12665203 0.018847875 ;
	setAttr ".pt[271]" -type "float3" 0 -0.12524889 -0.018801348 ;
	setAttr ".pt[272]" -type "float3" 0 -0.11228036 -0.0078066885 ;
	setAttr ".pt[273]" -type "float3" 0 -0.11567636 0.0084336428 ;
	setAttr ".pt[274]" -type "float3" 0 -0.10162694 0.007358213 ;
	setAttr ".pt[275]" -type "float3" 0 -0.11900474 -0.0083071636 ;
	setAttr ".pt[276]" -type "float3" 0 -0.13717744 -0.019957554 ;
	setAttr ".pt[277]" -type "float3" 0 -0.11609101 0.017285002 ;
	setAttr ".pt[278]" -type "float3" 0 -0.10766344 0.0078470986 ;
	setAttr ".pt[279]" -type "float3" 0 -0.11228036 -0.0077775428 ;
	setAttr ".pt[280]" -type "float3" 0 -0.11054129 -0.0076800995 ;
	setAttr ".pt[281]" -type "float3" 0 -0.10387796 0.0076318448 ;
	setAttr ".pt[282]" -type "float3" 0 -0.27902427 -0.037867852 ;
	setAttr ".pt[283]" -type "float3" 0 -0.2556065 -0.017072063 ;
	setAttr ".pt[284]" -type "float3" 0 -0.28659341 0.039379794 ;
	setAttr ".pt[285]" -type "float3" 0 -0.26042402 0.017735366 ;
	setAttr ".pt[286]" -type "float3" 0 -0.24209724 0.016467679 ;
	setAttr ".pt[287]" -type "float3" 0 -0.25873795 -0.017166952 ;
	setAttr ".pt[288]" -type "float3" 0 -0.29044658 -0.038824018 ;
	setAttr ".pt[289]" -type "float3" 0 -0.27225602 0.037098706 ;
	setAttr ".pt[290]" -type "float3" 0 -0.26336601 0.018348819 ;
	setAttr ".pt[291]" -type "float3" 0 -0.27553502 -0.018128648 ;
	setAttr ".pt[292]" -type "float3" 0 -0.24869765 -0.016390879 ;
	setAttr ".pt[293]" -type "float3" 0 -0.25491002 0.017402019 ;
	setAttr ".pt[294]" -type "float3" 0 -0.50089085 -0.068356365 ;
	setAttr ".pt[295]" -type "float3" 0.0041100038 -0.46745673 -0.031758569 ;
	setAttr ".pt[296]" -type "float3" 0 -0.48665881 0.066715755 ;
	setAttr ".pt[297]" -type "float3" 0 -0.45660764 0.029993324 ;
	setAttr ".pt[298]" -type "float3" -0.0046587638 -0.46328208 0.032722954 ;
	setAttr ".pt[299]" -type "float3" 0 -0.47190833 -0.02985432 ;
	setAttr ".pt[300]" -type "float3" 0 -0.49628153 -0.066535227 ;
	setAttr ".pt[301]" -type "float3" 0 -0.46997198 0.06472373 ;
	setAttr ".pt[302]" -type "float3" 0.0048725056 -0.46005747 0.032713346 ;
	setAttr ".pt[303]" -type "float3" 0 -0.47190833 -0.030094713 ;
	setAttr ".pt[304]" -type "float3" -0.0046587638 -0.46094304 -0.031453595 ;
	setAttr ".pt[305]" -type "float3" 0 -0.45161313 0.029971216 ;
	setAttr ".pt[306]" -type "float3" 0 -0.72049546 -0.10131284 ;
	setAttr ".pt[307]" -type "float3" 0.012031733 -0.68388242 -0.04785819 ;
	setAttr ".pt[308]" -type "float3" 0 -0.69772291 0.098103397 ;
	setAttr ".pt[309]" -type "float3" 0 -0.67233098 0.0447 ;
	setAttr ".pt[310]" -type "float3" -0.0137142 -0.68163419 0.04975174 ;
	setAttr ".pt[311]" -type "float3" 0 -0.68923122 -0.0436791 ;
	setAttr ".pt[312]" -type "float3" 0 -0.69515371 -0.095613278 ;
	setAttr ".pt[313]" -type "float3" 0 -0.69632441 0.098595202 ;
	setAttr ".pt[314]" -type "float3" 0.01316793 -0.68022037 0.049788781 ;
	setAttr ".pt[315]" -type "float3" 0 -0.67365152 -0.043232966 ;
	setAttr ".pt[316]" -type "float3" -0.0137142 -0.67804384 -0.047735713 ;
	setAttr ".pt[317]" -type "float3" 0 -0.6653164 0.044875901 ;
	setAttr ".pt[318]" -type "float3" 0.00034462515 -0.90423977 -0.13349228 ;
	setAttr ".pt[319]" -type "float3" 0.023905333 -0.87817097 -0.064159185 ;
	setAttr ".pt[320]" -type "float3" 0.00034462515 -0.8858552 0.13085641 ;
	setAttr ".pt[321]" -type "float3" 0 -0.86240375 0.059313912 ;
	setAttr ".pt[322]" -type "float3" -0.025904126 -0.87035674 0.066453792 ;
	setAttr ".pt[323]" -type "float3" 0 -0.87578505 -0.057087831 ;
	setAttr ".pt[324]" -type "float3" 0 -0.89809281 -0.13003379 ;
	setAttr ".pt[325]" -type "float3" 0 -0.87817097 0.13064212 ;
	setAttr ".pt[326]" -type "float3" 0.025193827 -0.87382424 0.066861361 ;
	setAttr ".pt[327]" -type "float3" 0 -0.86442965 -0.056997385 ;
	setAttr ".pt[328]" -type "float3" -0.026652984 -0.86640334 -0.063771114 ;
	setAttr ".pt[329]" -type "float3" 0 -0.85917646 0.060105503 ;
	setAttr ".pt[330]" -type "float3" 0.0045274631 -1.061859 -0.17314738 ;
	setAttr ".pt[331]" -type "float3" 0.049372654 -1.0641056 -0.085691325 ;
	setAttr ".pt[332]" -type "float3" 0.0051083029 -1.0485636 0.17040777 ;
	setAttr ".pt[333]" -type "float3" 0 -1.0335755 0.076088242 ;
	setAttr ".pt[334]" -type "float3" -0.05091333 -1.0466979 0.08723399 ;
	setAttr ".pt[335]" -type "float3" 0 -1.0404073 -0.071962185 ;
	setAttr ".pt[336]" -type "float3" -0.0059729116 -1.0565116 -0.16813944 ;
	setAttr ".pt[337]" -type "float3" -0.0042721559 -1.0429244 0.17117347 ;
	setAttr ".pt[338]" -type "float3" 0.048557576 -1.0494794 0.08774738 ;
	setAttr ".pt[339]" -type "float3" 0 -1.0412349 -0.073522471 ;
	setAttr ".pt[340]" -type "float3" -0.052648459 -1.0471588 -0.084507525 ;
	setAttr ".pt[341]" -type "float3" 0 -1.0429244 0.07855957 ;
	setAttr ".pt[342]" -type "float3" 0.01824786 -1.1519918 -0.21842642 ;
	setAttr ".pt[343]" -type "float3" 0.088326469 -1.1666689 -0.1076365 ;
	setAttr ".pt[344]" -type "float3" 0.017451143 -1.1421793 0.21245128 ;
	setAttr ".pt[345]" -type "float3" 0 -1.1535565 0.094851539 ;
	setAttr ".pt[346]" -type "float3" -0.089289159 -1.1551888 0.10943536 ;
	setAttr ".pt[347]" -type "float3" 0 -1.1567982 -0.088564031 ;
	setAttr ".pt[348]" -type "float3" -0.021663625 -1.1504297 -0.21211548 ;
	setAttr ".pt[349]" -type "float3" -0.015861321 -1.1379298 0.21451162 ;
	setAttr ".pt[350]" -type "float3" 0.086356558 -1.1582685 0.11056636 ;
	setAttr ".pt[351]" -type "float3" 0 -1.146471 -0.088647991 ;
	setAttr ".pt[352]" -type "float3" -0.089289159 -1.1519918 -0.10467307 ;
	setAttr ".pt[353]" -type "float3" 0 -1.1582685 0.097614966 ;
	setAttr ".pt[354]" -type "float3" 0.034976088 -1.2008539 -0.25792173 ;
	setAttr ".pt[355]" -type "float3" 0.13745755 -1.2034917 -0.12945145 ;
	setAttr ".pt[356]" -type "float3" 0.034976088 -1.197765 0.25299218 ;
	setAttr ".pt[357]" -type "float3" 0 -1.1970012 0.11003377 ;
	setAttr ".pt[358]" -type "float3" -0.14100416 -1.2020562 0.13306299 ;
	setAttr ".pt[359]" -type "float3" 0 -1.2008539 -0.10282858 ;
	setAttr ".pt[360]" -type "float3" -0.04143719 -1.2008539 -0.25176743 ;
	setAttr ".pt[361]" -type "float3" -0.032467611 -1.2008539 0.2615515 ;
	setAttr ".pt[362]" -type "float3" 0.13408062 -1.2008539 0.13295554 ;
	setAttr ".pt[363]" -type "float3" 0 -1.197765 -0.10424904 ;
	setAttr ".pt[364]" -type "float3" -0.1396552 -1.1987396 -0.12675984 ;
	setAttr ".pt[365]" -type "float3" 0 -1.1987396 0.11226977 ;
	setAttr ".pt[366]" -type "float3" 0.16549538 -1.0899031 -0.42872703 ;
	setAttr ".pt[367]" -type "float3" -0.18610783 -1.0853162 -0.42595601 ;
	setAttr ".pt[368]" -type "float3" 0.38055441 -1.1140122 0.22397624 ;
	setAttr ".pt[369]" -type "float3" 0.17292741 -1.0857226 0.42834798 ;
	setAttr ".pt[370]" -type "float3" 0.37710866 -1.1169449 -0.21503794 ;
	setAttr ".pt[371]" -type "float3" -0.19064921 -1.0941621 0.43357268 ;
	setAttr ".pt[372]" -type "float3" -0.39114231 -1.1209508 -0.21438186 ;
	setAttr ".pt[373]" -type "float3" -0.39040345 -1.1169449 0.22213653 ;
	setAttr ".pt[374]" -type "float3" 0.29338998 -0.75052649 -0.50407672 ;
	setAttr ".pt[375]" -type "float3" -0.31679368 -0.74295986 -0.50377625 ;
	setAttr ".pt[376]" -type "float3" 0.52548963 -0.77747184 0.25745046 ;
	setAttr ".pt[377]" -type "float3" 0.3081933 -0.74423391 0.4999904 ;
	setAttr ".pt[378]" -type "float3" 0.52371353 -0.77747184 -0.24904077 ;
	setAttr ".pt[379]" -type "float3" -0.3201544 -0.76153582 0.50155729 ;
	setAttr ".pt[380]" -type "float3" -0.54563469 -0.77929777 -0.24998885 ;
	setAttr ".pt[381]" -type "float3" -0.54764235 -0.77484465 0.2573283 ;
	setAttr ".pt[382]" -type "float3" 0.30044299 -0.27225602 -0.42893165 ;
	setAttr ".pt[383]" -type "float3" -0.32909814 -0.27225602 -0.43171796 ;
	setAttr ".pt[384]" -type "float3" 0.53287905 -0.27696669 0.21454412 ;
	setAttr ".pt[385]" -type "float3" 0.30875546 -0.25925273 0.42172155 ;
	setAttr ".pt[386]" -type "float3" 0.53137565 -0.27772045 -0.20594501 ;
	setAttr ".pt[387]" -type "float3" -0.33102351 -0.26747665 0.41897759 ;
	setAttr ".pt[388]" -type "float3" -0.55335772 -0.28505677 -0.20840482 ;
	setAttr ".pt[389]" -type "float3" -0.55539382 -0.27225602 0.21408111 ;
	setAttr ".pt[390]" -type "float3" 0.18941374 -0.0033290093 -0.22965375 ;
	setAttr ".pt[391]" -type "float3" -0.21183562 -0.0033290093 -0.23011723 ;
	setAttr ".pt[392]" -type "float3" 0.3662135 -0.0030062357 0.11324169 ;
	setAttr ".pt[393]" -type "float3" 0.18809223 -0.0017094992 0.22571558 ;
	setAttr ".pt[394]" -type "float3" 0.36537671 -0.0033290093 -0.10688922 ;
	setAttr ".pt[395]" -type "float3" -0.2145727 -0.0030062357 0.2240494 ;
	setAttr ".pt[396]" -type "float3" -0.38392556 -0.0051465821 -0.10781431 ;
	setAttr ".pt[397]" -type "float3" -0.38464606 -0.0030062357 0.11349538 ;
	setAttr ".pt[398]" -type "float3" 0.0037933693 0 0.16397588 ;
	setAttr ".pt[399]" -type "float3" 0.14869441 0 0.14900056 ;
	setAttr ".pt[400]" -type "float3" -0.018456761 0 0.16349597 ;
	setAttr ".pt[401]" -type "float3" -0.16254856 0 0.14883649 ;
	setAttr ".pt[402]" -type "float3" -0.19879571 0 0.0034160048 ;
	setAttr ".pt[403]" -type "float3" 0.09103559 0 0.1734412 ;
	setAttr ".pt[404]" -type "float3" 0.20790043 0 -0.084102973 ;
	setAttr ".pt[405]" -type "float3" -0.11774851 0 0.17529543 ;
	setAttr ".pt[406]" -type "float3" -0.22380519 0 -0.084296308 ;
	setAttr ".pt[407]" -type "float3" -0.22321351 0 0.089692943 ;
	setAttr ".pt[408]" -type "float3" 0.20843159 0 0.089528881 ;
	setAttr ".pt[409]" -type "float3" 0 -0.096631236 0.01475195 ;
	setAttr ".pt[410]" -type "float3" 0.066607706 0 0.16687036 ;
	setAttr ".pt[411]" -type "float3" 0.016635943 0 0.073711783 ;
	setAttr ".pt[412]" -type "float3" 0.077296935 -1.205386 -0.32881099 ;
	setAttr ".pt[413]" -type "float3" 0.055992831 -1.2136356 -0.29607251 ;
	setAttr ".pt[414]" -type "float3" 0 -0.01467853 -0.0010569403 ;
	setAttr ".pt[415]" -type "float3" 0.058085404 -1.2136356 0.29494712 ;
	setAttr ".pt[416]" -type "float3" 0.17886171 -1.2136356 -0.14643928 ;
	setAttr ".pt[417]" -type "float3" 0 -1.2136356 -0.1160666 ;
	setAttr ".pt[418]" -type "float3" 0 -0.086882681 0.0064556599 ;
	setAttr ".pt[419]" -type "float3" 0.17456572 0 -0.081018463 ;
	setAttr ".pt[420]" -type "float3" -0.083510093 0 0.16596274 ;
	setAttr ".pt[421]" -type "float3" -0.023358114 0 0.073034108 ;
	setAttr ".pt[422]" -type "float3" -0.089289159 -1.205386 -0.322806 ;
	setAttr ".pt[423]" -type "float3" -0.065102004 -1.2136356 -0.28948775 ;
	setAttr ".pt[424]" -type "float3" 0 -0.018683689 -0.0013350915 ;
	setAttr ".pt[425]" -type "float3" 0 -0.06870766 0.0050801421 ;
	setAttr ".pt[426]" -type "float3" 0 -0.086599089 -0.0061267666 ;
	setAttr ".pt[427]" -type "float3" -0.062001113 -1.2136356 0.30109456 ;
	setAttr ".pt[428]" -type "float3" -0.19165871 -1.2136356 -0.14742689 ;
	setAttr ".pt[429]" -type "float3" 0 -1.2136356 -0.11249429 ;
	setAttr ".pt[430]" -type "float3" 0 -0.11228036 -0.01660653 ;
	setAttr ".pt[431]" -type "float3" 0 -0.086882681 0.013270285 ;
	setAttr ".pt[432]" -type "float3" -0.18789643 0 -0.080889687 ;
	setAttr ".pt[433]" -type "float3" 0.016635943 0 -0.066736594 ;
	setAttr ".pt[434]" -type "float3" 0 -0.011536802 0.00087913004 ;
	setAttr ".pt[435]" -type "float3" 0.18125331 -1.2136356 0.15321152 ;
	setAttr ".pt[436]" -type "float3" 0 -1.2136356 0.12303925 ;
	setAttr ".pt[437]" -type "float3" 0 -0.079999387 0.005938685 ;
	setAttr ".pt[438]" -type "float3" 0 -0.088535301 -0.0061876914 ;
	setAttr ".pt[439]" -type "float3" 0.2231741 -1.2059655 0.16951308 ;
	setAttr ".pt[440]" -type "float3" -0.023578959 0 -0.069135718 ;
	setAttr ".pt[441]" -type "float3" 0 -0.0091047902 0.00069135195 ;
	setAttr ".pt[442]" -type "float3" 0 -0.074949227 -0.0052871639 ;
	setAttr ".pt[443]" -type "float3" 0 -0.08327511 0.0062104929 ;
	setAttr ".pt[444]" -type "float3" -0.18915226 -1.2136356 0.15275462 ;
	setAttr ".pt[445]" -type "float3" 0 -1.2136356 0.12433137 ;
	setAttr ".pt[446]" -type "float3" -0.18974957 0 0.086413816 ;
	setAttr ".pt[447]" -type "float3" 0 -0.10640372 -0.016073756 ;
	setAttr ".pt[448]" -type "float3" 0 -0.085342564 -0.0060032932 ;
	setAttr ".pt[449]" -type "float3" 0.080893874 -1.205386 0.32843888 ;
	setAttr ".pt[450]" -type "float3" 0.22742343 -1.2034917 -0.16463378 ;
	setAttr ".pt[451]" -type "float3" -0.093132518 -1.2075168 0.33086106 ;
	setAttr ".pt[452]" -type "float3" -0.23415068 -1.2059655 -0.16294657 ;
	setAttr ".pt[453]" -type "float3" -0.23357517 -1.2059655 0.16944394 ;
	setAttr ".pt[454]" -type "float3" 0.075533845 0 -0.16486248 ;
	setAttr ".pt[455]" -type "float3" -0.098969117 0 -0.16777815 ;
	setAttr ".pt[456]" -type "float3" 0.17066702 0 0.085777104 ;
	setAttr ".pt[457]" -type "float3" 0.089021415 0 -0.15718766 ;
	setAttr ".pt[458]" -type "float3" -0.11100719 0 -0.16070776 ;
	setAttr -s 459 ".vt";
	setAttr ".vt[0:165]"  0.42157069 0.049726542 0.48858619 1.42565 0.028866922 0.49515888
		 0.24775603 2.49856305 0.48004079 0.13443057 6.11060333 0.43902001 1.046755791 6.0049638748 0.4059895
		 0.13445005 6.10012484 -0.43657163 0.99427789 6.01580143 -0.39984232 0.24773243 2.48802567 -0.47850144
		 0.42627677 0.02314874 -0.47721678 1.41555107 0.039235871 -0.47769687 1.23660851 5.93876839 0.42772815
		 1.26298845 5.935637 -0.38773674 -3.7038328e-007 2.49203563 -0.45452252 -2.1263807e-007 2.51619601 0.45694986
		 -0.42035776 0.02336959 0.49016124 -1.41855383 0.019676346 0.48820883 -0.26901576 6.092675209 0.43910509
		 -0.24777068 2.50001144 0.48005712 -1.2681514 5.95722532 0.39197382 -1.074799299 6.011609077 0.39172751
		 -1.074869275 5.99535465 -0.38747281 -0.26901659 6.073667049 -0.43670398 -0.24780227 2.47388887 -0.47856995
		 -1.26831019 5.93997002 -0.38772646 -0.42736945 0.034039885 -0.47644019 -1.41392207 0.030253403 -0.47547424
		 0.12888426 6.14475822 0.0072144456 1.048983216 6.038793564 0.0072223982 0.25401527 0.020582357 0.009990613
		 1.59097552 0.020211065 0.010185736 0.12597862 2.49401641 0.0074640093 1.27327538 5.96533537 0.0072248192
		 1.8139413e-005 2.49989438 0.0074907877 -1.16258228 6.0014472008 0.0072191511 -0.25768173 6.15381765 0.0072128223
		 -1.59006596 0.014475436 0.010166587 -0.24835971 0.023687826 0.010086384 -1.30632246 5.94939661 0.0072231912
		 -0.12603778 2.47285652 0.0074705989 0.26813969 0.1307082 -0.52640665 1.56640923 0.1573168 -0.52511084
		 0.26535392 0.15217946 0.53122813 1.58253384 0.12506238 0.54060358 -1.56816161 0.13624448 -0.52571112
		 -0.26764873 0.14652365 -0.52684069 -1.57143033 0.1115407 0.53156632 -0.26104099 0.10794325 0.53534532
		 1.79106903 0.13737677 0.0087897833 0.047010679 0.13830653 0.0087055136 -1.79894209 0.11873567 0.0090094004
		 -0.030567277 0.12815821 0.0089062368 0.29776332 0.46290112 -0.50061554 1.52826309 0.42569402 -0.50233978
		 -1.52888846 0.41831738 -0.50269467 -0.29527423 0.45065722 -0.50264174 1.73564768 0.42594633 0.0069171176
		 0.090593003 0.46362844 0.0068207118 0.29334298 0.42261413 0.50454873 1.53110933 0.44291937 0.50510788
		 -1.53176939 0.40163001 0.50523424 -0.29441702 0.44727635 0.50319326 -1.73559093 0.4288829 0.0069375378
		 -0.085219331 0.45174289 0.0067066024 0.31794572 0.79481846 -0.48084208 1.49314392 0.77465302 -0.48292017
		 -1.49512875 0.76507938 -0.48451498 -0.31824791 0.80678219 -0.48030812 1.68492985 0.78883082 0.0065538203
		 0.11919767 0.76868778 0.0065158601 0.31763852 0.76413542 0.48126477 1.49650526 0.76317078 0.48492593
		 -1.49722767 0.76032251 0.48547807 -0.31636956 0.77215499 0.48209915 -1.68856263 0.77232933 0.0065606958
		 -0.11969545 0.79129297 0.0064529423 0.326092 1.095329762 -0.47048822 1.47070682 1.085030913 -0.47223356
		 -1.46936786 1.11350214 -0.47190437 -0.32615438 1.094651341 -0.47029677 1.65903783 1.085241199 0.0067746011
		 0.13501076 1.097898602 0.0067808153 0.32713288 1.088020205 0.47042444 1.47121024 1.080344439 0.47284588
		 -1.4702208 1.1168139 0.47274363 -0.32614818 1.10188866 0.4710393 -1.65962207 1.1072185 0.0067857699
		 -0.13489331 1.10344994 0.0067893951 0.32901984 1.41733074 -0.46387991 1.45241928 1.40120339 -0.46471563
		 -1.45190334 1.41349721 -0.46466795 -0.32892916 1.39640927 -0.46409622 1.63767028 1.42522788 0.0070728608
		 0.14150243 1.40378344 0.0070849345 0.3292982 1.39883864 0.46531916 1.45049381 1.41894794 0.46522284
		 -1.45246136 1.40826309 0.46620193 -0.32908541 1.42647946 0.46531057 -1.63914227 1.41557693 0.0071019805
		 -0.14132749 1.41174352 0.0071155168 0.32884112 1.71574163 -0.46017674 1.4369204 1.74071622 -0.46027759
		 -1.4354285 1.77028275 -0.45993313 -0.32880816 1.71123362 -0.46015766 1.62120974 1.74589109 0.0072929319
		 0.14387657 1.72369981 0.0072815018 0.32898581 1.70977557 0.46210411 1.4350158 1.76156843 0.46171638
		 -1.43557894 1.76101196 0.46200374 -0.32883349 1.75579953 0.46191016 -1.62121975 1.74413013 0.0073549422
		 -0.14376774 1.72390139 0.007319428 0.32732141 2.02702713 -0.45759046 1.42339098 2.062650442 -0.45746469
		 -1.42417836 2.037966013 -0.45758811 -0.32729065 2.022634029 -0.45759305 1.60673451 2.043557644 0.0074200761
		 0.14427152 2.041862726 0.0073699015 0.32731906 2.045611858 0.45965788 1.42380869 2.032524824 0.45975003
		 -1.42416525 2.034297705 0.45989585 -0.32732543 2.052754164 0.45976615 -1.60666752 2.049220562 0.007465567
		 -0.14422999 2.046644449 0.007399119 0.32587957 2.25244284 -0.45606774 1.41371906 2.3001411 -0.45582515
		 -1.41376817 2.29655433 -0.45583081 -0.32569024 2.27533031 -0.45588946 1.59575129 2.27647567 0.0074619581
		 0.14423154 2.28024721 0.0074171121 0.32585335 2.2685411 0.45832348 1.41449797 2.26776266 0.45830703
		 -1.41374063 2.29741597 0.45825234 -0.32563797 2.3074584 0.45819885 -1.59545898 2.29644489 0.0074880114
		 -0.14414713 2.28686833 0.0074435668 0.30518925 2.61023617 -0.52022046 1.4015553 2.60136032 -0.45404279
		 7.757331e-007 2.60998702 -0.52019715 -0.30524027 2.60465002 -0.52022779 -1.40164709 2.60255861 -0.45405692
		 1.58105278 2.59977698 0.007471418 0.30162251 3.044877768 0.51762986 1.38439715 3.052663565 0.45418972
		 1.7804647e-008 3.044281006 0.51761895 -0.30158764 3.040903091 0.51760525 -1.38446414 3.034417629 0.45417798
		 -1.56154943 3.057836533 0.00740813 0.30160493 3.045400143 -0.51765221 1.38429427 3.039615631 -0.4517554
		 -8.6259774e-008 3.050269604 -0.51760566 -0.30167389 3.039431095 -0.51770031 -1.38415956 3.048125744 -0.45176262
		 1.56202745 3.040566444 0.0074353153 0.29608998 3.69602823 0.51387024 1.35933983 3.68007755 0.45094264
		 2.1803109e-008 3.69358659 0.51386708 -0.29607382 3.69598675 0.51385808 -1.35817206 3.70266819 0.45075989
		 -1.53252578 3.71451998 0.0073240465 0.29617506 3.70487261 -0.51393843 1.35909939 3.68965197 -0.44851923
		 -2.4057767e-008 3.71566534 -0.51388502 -0.29607981 3.71629238 -0.5138799 -1.35859942 3.7098763 -0.44849873
		 1.53318918 3.69155765 0.0073702289 0.28966403 4.47140312 0.5095551;
	setAttr ".vt[166:331]" 1.32926476 4.46063995 0.44709271 1.2709915e-008 4.46133995 0.50959903
		 -0.28965291 4.4713006 0.50954556 -1.32964468 4.45952129 0.44712147 -1.49975169 4.47437382 0.0072971014
		 0.28970939 4.46917343 -0.50959504 1.32937956 4.46157742 -0.44470561 -9.7372705e-009 4.47403049 -0.50959015
		 -0.28976876 4.46892834 -0.50963831 -1.32900143 4.47866058 -0.44468215 1.49980521 4.45656967 0.0073241852
		 0.14154305 5.26887608 0.50508684 1.29839277 5.27309513 0.4431417 -0.28302139 5.26513004 0.50509536
		 -1.29846001 5.28437424 0.44314337 -1.46458733 5.2809329 0.0072663026 0.28301367 5.26041698 -0.50509465
		 1.29861212 5.26103115 -0.44076163 -9.2082226e-009 5.26848412 -0.50508785 -0.2829451 5.27867985 -0.50505072
		 -1.29830217 5.26200867 -0.44073212 1.46469009 5.2801857 0.0072760712 1.28549981 5.76425505 -0.4382669
		 -1.28552294 5.76185226 -0.43827561 1.443488 5.7533288 0.0072405045 0.14243473 5.81324196 0.50204611
		 1.28488743 5.78320885 0.44058976 -0.2847788 5.82008123 0.50198913 -1.28527474 5.78294086 0.44063577
		 -1.44237292 5.79021454 0.0072331224 0.921049 -0.0026572552 0.57067841 0.7523188 6.076553822 0.43934143
		 0.75231391 6.0658288 -0.43694061 0.92015684 0.032232512 -0.55963916 0.30536205 2.60037613 0.52027828
		 0.29371202 5.87396145 -0.50160313 0.32443282 2.45058608 -0.45485458 1.40666151 2.47462058 -0.4547677
		 0.12886728 6.15748215 0.25484255 1.048581123 6.034476757 0.25520897 0.25647402 0.0092171701 -0.30068782
		 1.58851004 0.01141407 -0.30158484 0.12596527 2.48936701 -0.25555176 0.32452384 2.45047641 0.45730618
		 1.40706122 2.46254539 0.45723465 0.2611565 0.076917179 0.53610826 1.59394407 0.043302368 0.54852736
		 1.27291775 5.96710539 0.25536826 1.40148139 2.60976696 0.45646167 1.3002876 5.87312222 -0.43771747
		 1.992485e-005 2.49370003 -0.25546461 1.0114224e-008 2.61626482 0.52019107 -7.9105522e-009 5.8778286 -0.50157523
		 -0.92061299 -0.0075037689 0.5703761 -0.3052364 2.61711264 0.52017319 -1.40151417 2.60492706 0.45647681
		 -0.7520662 6.048381805 0.43928492 -1.16253662 6.0058875084 0.25528845 -0.75278342 6.0026726723 -0.43704504
		 -0.25782907 6.14079332 0.25490353 -0.29369426 5.87405682 -0.50159097 -1.30030227 5.87301731 -0.43772462
		 -1.40728879 2.45983553 -0.45485103 -0.3243781 2.45881963 -0.45475805 -0.92072111 0.041038215 -0.55042183
		 -1.58732462 0.019298898 -0.30128786 -0.25295871 0.029498687 -0.30229893 -1.3059659 5.96045828 0.25541836
		 -1.40734553 2.45879912 0.45730278 -0.32436922 2.47924542 0.45717502 -0.125983 2.47987533 -0.25558004
		 -1.577075 0.055440404 0.53504211 -0.25873348 0.061716352 0.53815889 0.12887959 6.14057398 -0.2452365
		 1.048645973 6.031033993 -0.245589 0.25086555 0.027305916 0.3172251 1.59732389 -6.4728134e-005 0.3203474
		 0.1259634 2.50258422 0.26546627 1.27314782 5.95959997 -0.2457542 -3.9803959e-007 2.48374772 0.26550668
		 -1.16192329 6.012023449 -0.24562202 -0.25784343 6.12570763 -0.24529155 -1.58993053 0.0072656958 0.31696936
		 -0.24763557 0.021477589 0.31877574 -1.30604196 5.95020914 -0.24579664 -0.12603582 2.47790718 0.26555124
		 0.70820713 6.11084604 0.0072185816 0.92156911 -0.0087174727 0.010896468 1.58824694 2.43834329 0.007479954
		 0.144034 2.46585989 0.0074544395 1.3914969 5.8731513 0.0072341324 -0.70824969 6.071242332 0.0072162081
		 -0.92111146 0.010548459 0.010512196 -1.58790386 2.46310639 0.007490614 -0.1440092 2.47431564 0.0074589844
		 -1.80955684 0.064370073 0.0096536512 -0.022481868 0.078070708 0.0095254648 -1.58122969 2.61133742 0.007472347
		 0.26586595 0.081473723 -0.52841538 1.57482314 0.075063385 -0.52895337 -1.57531393 0.064098902 -0.52885681
		 -0.26374885 0.062165149 -0.5303238 1.8021512 0.059600789 0.009588236 0.040577032 0.063685477 0.0094085718
		 0.91725892 0.14639582 0.63878334 0.91741645 0.12967911 -0.64449209 1.79361725 0.13836782 -0.29855385
		 0.034663811 0.1533355 0.3129119 -1.79434609 0.13083467 0.31075221 -0.039861087 0.15174869 -0.29974198
		 -0.91768807 0.15756342 -0.62463814 -0.91718262 0.12564051 0.63910794 1.80065703 0.1425993 0.31281841
		 0.046546038 0.13991039 -0.29743955 -1.79204869 0.153163 -0.29833353 -0.028116869 0.13828656 0.31532493
		 0.91167504 0.43437222 -0.58268845 1.73262882 0.43163463 -0.28259209 0.9112767 0.46171179 0.57598913
		 0.086835697 0.45001709 0.29228291 -1.73521364 0.42779374 0.29193535 -0.084950581 0.43806583 -0.28490347
		 -0.91154689 0.45449817 -0.57390857 -0.9112851 0.44071004 0.57683098 1.7338196 0.45881391 0.29145676
		 0.09151642 0.47174111 -0.28252333 -1.73347402 0.43994993 -0.28300619 -0.084369697 0.45181382 0.29299313
		 0.90453738 0.79046655 -0.54905272 1.68428063 0.77282077 -0.27002805 0.904535 0.78267962 0.54623455
		 0.12008043 0.77173853 0.27949509 -1.68763089 0.79019207 0.279219 -0.12026933 0.78582805 -0.27165627
		 -0.90450114 0.78555965 -0.54731345 -0.90486759 0.7635982 0.54748845 1.68918407 0.77550483 0.2795575
		 0.12053973 0.79070634 -0.27154928 -1.68632901 0.78784913 -0.27095708 -0.11872566 0.775208 0.27984676
		 0.89715046 1.12292349 -0.53627819 1.65837741 1.096518517 -0.2647835 0.89732319 1.10176802 0.53456265
		 0.13562512 1.098953724 0.27320302 -1.65975189 1.11708689 0.27362812 -0.13598469 1.11441863 -0.26453993
		 -0.89773923 1.086996675 -0.53657675 -0.89738309 1.10708332 0.53485745 1.65873742 1.10314214 0.27326676
		 0.13486631 1.096498847 -0.26509705 -1.65926337 1.11549342 -0.26519635 -0.13473351 1.098479509 0.27346769
		 0.89016473 1.42413688 -0.53032976 1.63938451 1.40021288 -0.26139408 0.89011538 1.40548718 0.52921373
		 0.14165287 1.40127742 0.27020818 -1.63966751 1.41308546 0.27054033 -0.14152975 1.41173291 -0.26108727
		 -0.8901723 1.41429198 -0.53023344 -0.89048254 1.40120351 0.52951211 1.63869238 1.40417671 0.2702046
		 0.1413565 1.39889789 -0.2612673 -1.63929355 1.41362345 -0.26143798 -0.14137067 1.40333951 0.27032563
		 0.88256443 1.74955559 -0.52649003 1.62112975 1.75535691 -0.25880793;
	setAttr ".vt[332:458]" 0.88236022 1.73194313 0.52589625 0.14397781 1.72377419 0.26832965
		 -1.62132812 1.7441113 0.26842743 -0.14380947 1.72348797 -0.25881904 -0.88259792 1.7361902 -0.52644587
		 -0.88256514 1.72963583 0.52595884 1.62144411 1.73348963 0.26831079 0.14392123 1.73281491 -0.25876415
		 -1.6206193 1.7564044 -0.2587198 -0.14394128 1.74549091 0.26832533 0.8755402 2.052155495 -0.52396065
		 1.60661614 2.053051472 -0.25722376 0.87569523 2.018316746 0.52379149 0.14436577 2.040015936 0.26704589
		 -1.60714281 2.038202286 0.2671299 -0.14424407 2.034169197 -0.25734153 -0.87544739 2.039159536 -0.5238744
		 -0.87579477 2.021378994 0.52383047 1.60680389 2.033586979 0.26701921 0.14433457 2.0090913773 -0.25741735
		 -1.60715175 2.036934614 -0.25724849 -0.14434177 2.058674574 0.26703861 0.87037796 2.27324915 -0.52240026
		 1.59530866 2.29123521 -0.25623861 0.87033814 2.25116324 0.52229941 0.14422451 2.27055311 0.26622909
		 -1.59564078 2.29036283 0.26620334 -0.14416884 2.27157068 -0.25635844 -0.87012684 2.26558161 -0.52232385
		 -0.86979049 2.28354955 0.52216268 1.59573531 2.27274704 0.26616329 0.14420386 2.26286149 -0.25638002
		 -1.59587908 2.28475595 -0.25626469 -0.14421532 2.27910733 0.26623872 0.85186595 3.037684917 -0.51770008
		 -0.8518157 3.040956736 -0.51769805 1.56173015 3.053741693 0.26377922 0.85176373 3.045655012 0.51763511
		 1.56137156 3.048737764 -0.2538676 -0.85156006 3.041288376 0.51757896 -1.56154728 3.060389757 -0.25390506
		 -1.56156301 3.048634291 0.26374453 0.83606845 3.70637083 -0.5139063 -0.83580059 3.71659231 -0.51386666
		 1.53319526 3.69113207 0.26186961 0.8358897 3.70842552 0.51382697 1.53305697 3.69597769 -0.25206208
		 -0.8360309 3.69551611 0.5138495 -1.53274465 3.71543884 -0.25208884 -1.53285849 3.69936562 0.26180702
		 0.81812656 4.46118975 -0.50963199 -0.81826293 4.46058941 -0.50967789 1.49944782 4.46467781 0.25965381
		 0.81785059 4.47475052 0.50954038 1.49920678 4.47155476 -0.24989092 -0.81788003 4.472579 0.50953805
		 -1.4996624 4.47623825 -0.24994612 -1.49953103 4.47867203 0.25963461 0.79925537 5.25089836 -0.50513524
		 -0.79899585 5.26000786 -0.50507998 1.46517801 5.26944923 0.25740391 0.79886782 5.28372669 0.50503141
		 1.46497226 5.26871395 -0.24769604 -0.79909575 5.27280617 0.50508332 -1.46449161 5.27496862 -0.24767569
		 -1.4651525 5.27462721 0.25739312 0.14345263 5.9727273 0.50107169 1.27143037 5.88259459 0.44008636
		 -0.28699216 5.9607892 0.50119549 -1.2713685 5.89447212 0.44007519 -1.40445101 5.88992214 0.0072264927
		 0.81171966 5.82045269 0.50201643 1.4419781 5.7839098 -0.24622895 -0.81255764 5.77767897 0.50220823
		 -1.44250524 5.781425 -0.24626811 -1.44266248 5.78600836 0.25591907 1.44215858 5.78483391 0.25588623
		 0.91882914 0.071151912 0.65529418 0.79513979 5.94675112 0.5012877 0.7083829 6.10455418 0.25509405
		 0.86246765 2.60193014 -0.52031678 0.86597794 2.45778847 -0.52121896 0.92129189 0.0013268582 -0.30918884
		 0.8656882 2.45566535 0.52107251 1.58766472 2.45356178 -0.25563201 0.14399488 2.46837926 -0.25564778
		 0.020334503 0.080652416 0.3189047 1.39094794 5.8813014 -0.24595946 -0.79506868 5.94109011 0.50127119
		 -0.70807427 6.083279133 0.25505075 -0.86238122 2.59714437 -0.52029938 -0.86582494 2.44999576 -0.52118212
		 -0.92107427 0.025294604 -0.30683526 -1.81363904 0.037509255 0.31733909 -0.026193289 0.066612817 -0.30379158
		 -0.8654179 2.47181845 0.52099973 -1.58697963 2.48337221 -0.25558403 -0.14402933 2.46026874 -0.25566638
		 -0.9190259 0.098746486 -0.63500673 -0.91875356 0.051014248 0.65561926 -1.40412998 5.89158487 -0.24596086
		 0.70838898 6.099333286 -0.24547198 0.92123002 -0.0010409034 0.327057 1.58736777 2.45935845 0.26555124
		 0.1440143 2.47999907 0.26553911 1.8174262 0.066364296 0.31860819 0.0375854 0.073740713 -0.30010363
		 1.58138764 2.59654522 0.26512462 -0.70812994 6.068880558 -0.2454416 -0.92083335 0.003317703 0.32590035
		 -1.81196141 0.05585146 -0.30291006 -0.016891655 0.079723075 0.32008433 -1.5873251 2.47185111 0.26557031
		 -0.14402759 2.47451401 0.26557001 -1.40465426 5.88760376 0.25562313 0.91860294 0.081824392 -0.64857852
		 1.80865431 0.067332499 -0.30205232 0.86224198 2.60541391 0.5201984 1.58043766 2.61196399 -0.25512302
		 -0.86229491 2.6020968 0.52021146 -1.58100355 2.61748695 -0.25516617 -1.58091068 2.61229515 0.2651
		 0.80105913 5.88670158 -0.50165987 -0.80134213 5.85092926 -0.50172454 1.39036942 5.89826584 0.25555718
		 0.96171713 5.94227982 -0.47988907 -0.95004517 5.90311432 -0.48144987;
	setAttr -s 910 ".ed";
	setAttr ".ed[0:165]"  0 196 1 196 1 1 3 197 1 197 4 1 5 198 1 198 6 1 8 199 1
		 199 9 1 2 200 1 5 201 1 6 11 1 3 204 1 4 205 1 205 27 1 8 206 1 206 28 1 9 207 1
		 207 29 1 7 208 1 208 30 1 209 2 1 202 123 1 203 124 1 0 211 1 211 41 1 1 212 1 212 42 1
		 10 4 1 10 213 1 213 31 1 210 214 1 11 215 1 215 188 1 7 12 1 2 13 1 12 216 1 216 32 1
		 13 217 1 204 26 1 5 218 1 14 219 1 219 15 1 17 220 1 18 19 1 16 222 1 222 19 1 19 223 1
		 223 33 1 21 224 1 224 20 1 16 225 1 225 34 1 21 226 1 20 23 1 23 227 1 227 189 1
		 22 229 1 24 230 1 230 25 1 25 231 1 231 35 1 24 232 1 232 36 1 18 233 1 233 37 1
		 228 125 1 229 126 1 234 221 1 235 17 1 22 236 1 236 38 1 15 237 1 237 45 1 14 238 1
		 238 46 1 17 13 1 22 12 1 16 3 1 21 5 1 26 239 1 27 240 1 240 6 1 28 241 1 241 0 1
		 29 242 1 242 1 1 30 243 1 243 2 1 31 244 1 244 11 1 32 245 1 245 13 1 239 5 1 33 246 1
		 246 20 1 34 247 1 247 21 1 35 248 1 248 15 1 36 249 1 249 14 1 37 250 1 250 23 1
		 38 251 1 251 17 1 27 252 1 252 26 1 29 253 1 253 28 1 31 27 1 255 30 1 254 127 1
		 255 128 1 30 32 1 31 256 1 256 190 1 34 257 1 257 33 1 36 258 1 258 35 1 33 37 1
		 38 260 1 35 261 1 261 49 1 36 262 1 262 50 1 32 38 1 26 34 1 259 263 1 39 264 1 264 8 1
		 40 265 1 265 9 1 43 266 1 266 25 1 44 267 1 267 24 1 47 268 1 268 29 1 48 269 1 269 28 1
		 42 270 1 270 41 1 40 271 1 271 39 1 47 272 1 272 40 1 41 273 1 273 48 1 45 274 1
		 274 49 1 44 275 1 275 50 1 43 276 1 276 44 1 46 277 1 277 45 1 47 278 1 278 42 1
		 48 279 1 279 39 1 49 280 1 280 43 1 50 281 1 281 46 1 41 57 1;
	setAttr ".ed[166:331]" 42 58 1 45 59 1 46 60 1 49 61 1 50 62 1 52 40 1 53 43 1
		 54 44 1 55 47 1 56 48 1 52 282 1 282 51 1 55 283 1 283 52 1 58 284 1 284 57 1 57 285 1
		 285 56 1 59 286 1 286 61 1 54 287 1 287 62 1 53 288 1 288 54 1 60 289 1 289 59 1
		 55 290 1 290 58 1 56 291 1 291 51 1 61 292 1 292 53 1 62 293 1 293 60 1 57 69 1 58 70 1
		 59 71 1 60 72 1 61 73 1 62 74 1 63 51 1 64 52 1 65 53 1 66 54 1 67 55 1 68 56 1 64 294 1
		 294 63 1 67 295 1 295 64 1 70 296 1 296 69 1 69 297 1 297 68 1 71 298 1 298 73 1
		 66 299 1 299 74 1 65 300 1 300 66 1 72 301 1 301 71 1 67 302 1 302 70 1 68 303 1
		 303 63 1 73 304 1 304 65 1 74 305 1 305 72 1 69 81 1 70 82 1 71 83 1 72 84 1 73 85 1
		 74 86 1 75 63 1 76 64 1 77 65 1 78 66 1 79 67 1 80 68 1 76 306 1 306 75 1 79 307 1
		 307 76 1 82 308 1 308 81 1 81 309 1 309 80 1 83 310 1 310 85 1 78 311 1 311 86 1
		 77 312 1 312 78 1 84 313 1 313 83 1 79 314 1 314 82 1 80 315 1 315 75 1 85 316 1
		 316 77 1 86 317 1 317 84 1 81 93 1 82 94 1 83 95 1 84 96 1 85 97 1 86 98 1 87 75 1
		 88 76 1 89 77 1 90 78 1 91 79 1 92 80 1 88 318 1 318 87 1 91 319 1 319 88 1 94 320 1
		 320 93 1 93 321 1 321 92 1 95 322 1 322 97 1 90 323 1 323 98 1 89 324 1 324 90 1
		 96 325 1 325 95 1 91 326 1 326 94 1 92 327 1 327 87 1 97 328 1 328 89 1 98 329 1
		 329 96 1 93 105 1 94 106 1 95 107 1 96 108 1 97 109 1 98 110 1 99 87 1 100 88 1 101 89 1
		 102 90 1 103 91 1 104 92 1 100 330 1 330 99 1 103 331 1 331 100 1 106 332 1 332 105 1
		 105 333 1 333 104 1 107 334 1 334 109 1 102 335 1 335 110 1;
	setAttr ".ed[332:497]" 101 336 1 336 102 1 108 337 1 337 107 1 103 338 1 338 106 1
		 104 339 1 339 99 1 109 340 1 340 101 1 110 341 1 341 108 1 105 117 1 106 118 1 107 119 1
		 108 120 1 109 121 1 110 122 1 111 99 1 112 100 1 113 101 1 114 102 1 115 103 1 116 104 1
		 112 342 1 342 111 1 115 343 1 343 112 1 118 344 1 344 117 1 117 345 1 345 116 1 119 346 1
		 346 121 1 114 347 1 347 122 1 113 348 1 348 114 1 120 349 1 349 119 1 115 350 1 350 118 1
		 116 351 1 351 111 1 121 352 1 352 113 1 122 353 1 353 120 1 117 129 1 118 130 1 119 131 1
		 120 132 1 121 133 1 122 134 1 123 111 1 124 112 1 125 113 1 126 114 1 127 115 1 128 116 1
		 129 209 1 130 210 1 131 234 1 132 235 1 133 259 1 134 260 1 124 354 1 354 123 1 127 355 1
		 355 124 1 130 356 1 356 129 1 129 357 1 357 128 1 131 358 1 358 133 1 126 359 1 359 134 1
		 125 360 1 360 126 1 132 361 1 361 131 1 127 362 1 362 130 1 128 363 1 363 123 1 133 364 1
		 364 125 1 134 365 1 365 132 1 200 141 1 135 7 1 214 142 1 136 203 1 217 143 1 137 12 1
		 220 144 1 221 145 1 138 22 1 139 228 1 140 254 1 263 146 1 200 449 1 449 214 1 135 412 1
		 412 136 1 200 217 1 140 450 1 450 136 1 221 451 1 451 220 1 139 422 1 422 138 1 217 220 1
		 139 452 1 452 263 1 140 439 1 439 214 1 263 453 1 453 221 1 147 135 1 148 136 1 149 137 1
		 150 138 1 151 139 1 152 140 1 141 369 1 152 370 1 145 371 1 151 372 1 146 373 1 366 148 1
		 141 143 1 367 150 1 143 144 1 368 142 1 141 153 1 142 154 1 143 155 1 144 156 1 145 157 1
		 146 158 1 369 142 1 147 149 1 370 148 1 371 144 1 149 150 1 372 146 1 373 145 1 147 366 1
		 151 367 1 152 368 1 159 147 1 160 148 1 161 149 1 162 150 1 163 151 1 164 152 1 153 377 1
		 164 378 1 157 379 1 163 380 1 158 381 1 374 160 1 153 155 1 375 162 1;
	setAttr ".ed[498:663]" 155 156 1 376 154 1 153 165 1 154 166 1 155 167 1 156 168 1
		 157 169 1 158 170 1 377 154 1 159 161 1 378 160 1 379 156 1 161 162 1 380 158 1 381 157 1
		 159 374 1 163 375 1 164 376 1 171 159 1 172 160 1 173 161 1 174 162 1 175 163 1 176 164 1
		 165 385 1 176 386 1 169 387 1 175 388 1 170 389 1 382 172 1 165 167 1 383 174 1 167 168 1
		 384 166 1 165 177 1 166 178 1 167 177 1 168 179 1 169 180 1 170 181 1 385 166 1 171 173 1
		 386 172 1 387 168 1 173 174 1 388 170 1 389 169 1 171 382 1 175 383 1 176 384 1 182 171 1
		 183 172 1 184 173 1 185 174 1 186 175 1 187 176 1 177 393 1 187 394 1 180 395 1 186 396 1
		 181 397 1 390 183 1 391 185 1 177 179 1 392 178 1 177 191 1 178 192 1 179 193 1 180 194 1
		 181 195 1 393 178 1 182 184 1 394 183 1 395 179 1 184 185 1 396 181 1 397 180 1 182 390 1
		 186 391 1 187 392 1 201 182 1 188 183 1 218 184 1 226 185 1 189 186 1 190 187 1 191 398 1
		 192 399 1 399 10 1 398 3 1 193 400 1 400 16 1 194 401 1 401 18 1 195 402 1 402 37 1
		 191 403 1 403 192 1 201 218 1 190 404 1 404 188 1 194 405 1 405 193 1 218 226 1 189 406 1
		 406 195 1 195 407 1 407 194 1 201 454 1 454 188 1 189 455 1 455 226 1 191 193 1 190 408 1
		 408 192 1 409 196 1 409 212 1 409 270 1 409 211 1 410 398 1 410 403 1 410 399 1 410 197 1
		 411 197 1 411 205 1 411 252 1 411 204 1 413 412 1 413 203 1 413 202 1 414 199 1 414 207 1
		 414 253 1 414 206 1 213 205 1 413 354 1 415 210 1 415 209 1 416 254 1 416 203 1 417 202 1
		 417 255 1 417 208 1 416 355 1 418 211 1 418 273 1 418 269 1 418 241 1 208 216 1 419 244 1
		 419 256 1 419 404 1 419 215 1 420 222 1 420 401 1 420 405 1 420 400 1 421 225 1 421 257 1
		 421 223 1 421 222 1 423 229 1 423 228 1 423 422 1 424 232 1 424 258 1;
	setAttr ".ed[664:829]" 424 231 1 424 230 1 425 248 1 425 237 1 425 274 1 425 261 1
		 223 233 1 426 232 1 426 267 1 426 275 1 426 262 1 427 235 1 427 234 1 428 228 1 428 259 1
		 429 236 1 429 260 1 429 229 1 430 230 1 430 266 1 430 276 1 430 267 1 431 238 1 431 277 1
		 431 237 1 431 219 1 216 236 1 204 225 1 432 227 1 432 406 1 432 402 1 432 250 1 433 252 1
		 433 240 1 433 198 1 433 239 1 434 253 1 434 242 1 434 196 1 434 241 1 244 240 1 435 254 1
		 435 210 1 436 255 1 436 209 1 436 243 1 437 268 1 437 278 1 437 212 1 437 242 1 438 269 1
		 438 279 1 438 264 1 438 206 1 243 245 1 439 435 1 440 257 1 440 247 1 440 224 1 440 246 1
		 441 258 1 441 249 1 441 219 1 441 248 1 442 231 1 442 261 1 442 280 1 442 266 1 246 250 1
		 443 249 1 443 262 1 443 281 1 443 238 1 444 259 1 444 234 1 445 260 1 445 251 1 445 235 1
		 245 251 1 239 247 1 446 402 1 446 407 1 446 401 1 446 233 1 447 271 1 447 265 1 447 199 1
		 447 264 1 448 272 1 448 268 1 448 207 1 448 265 1 270 284 1 273 285 1 274 286 1 275 287 1
		 276 288 1 277 289 1 278 290 1 279 291 1 280 292 1 281 293 1 282 271 1 283 272 1 284 296 1
		 285 297 1 286 298 1 287 299 1 288 300 1 289 301 1 290 302 1 291 303 1 292 304 1 293 305 1
		 294 282 1 295 283 1 296 308 1 297 309 1 298 310 1 299 311 1 300 312 1 301 313 1 302 314 1
		 303 315 1 304 316 1 305 317 1 306 294 1 307 295 1 308 320 1 309 321 1 310 322 1 311 323 1
		 312 324 1 313 325 1 314 326 1 315 327 1 316 328 1 317 329 1 318 306 1 319 307 1 320 332 1
		 321 333 1 322 334 1 323 335 1 324 336 1 325 337 1 326 338 1 327 339 1 328 340 1 329 341 1
		 330 318 1 331 319 1 332 344 1 333 345 1 334 346 1 335 347 1 336 348 1 337 349 1 338 350 1
		 339 351 1 340 352 1 341 353 1 342 330 1 343 331 1 344 356 1 345 357 1;
	setAttr ".ed[830:909]" 346 358 1 347 359 1 348 360 1 349 361 1 350 362 1 351 363 1
		 352 364 1 353 365 1 354 342 1 355 343 1 356 415 1 357 436 1 358 444 1 359 429 1 360 423 1
		 361 427 1 362 435 1 363 417 1 364 428 1 365 445 1 449 415 1 412 366 1 135 137 1 450 416 1
		 451 427 1 422 367 1 137 138 1 452 428 1 439 368 1 453 444 1 369 449 1 370 450 1 371 451 1
		 372 452 1 373 453 1 366 374 1 367 375 1 368 376 1 377 369 1 378 370 1 379 371 1 380 372 1
		 381 373 1 374 382 1 375 383 1 376 384 1 385 377 1 386 378 1 387 379 1 388 380 1 389 381 1
		 382 390 1 383 391 1 384 392 1 393 385 1 394 386 1 395 387 1 396 388 1 397 389 1 390 454 1
		 391 455 1 392 408 1 403 393 1 404 394 1 405 395 1 406 396 1 407 397 1 454 198 1 455 224 1
		 398 400 1 456 408 1 456 256 1 456 213 1 456 399 1 457 215 1 6 457 0 457 454 0 458 227 1
		 20 458 0 458 455 0;
	setAttr -s 453 -ch 1820 ".fc[0:452]" -type "polyFaces" 
		f 4 1 25 -615 613
		mu 0 4 283 1 284 235
		f 4 26 141 -616 614
		mu 0 4 284 6 285 235
		f 4 142 -25 -617 615
		mu 0 4 285 2 286 235
		f 4 -24 0 -614 616
		mu 0 4 286 0 283 235
		f 4 -585 594 -619 617
		mu 0 4 287 42 288 236
		f 4 595 585 -620 618
		mu 0 4 288 43 289 236
		f 5 27 -4 -621 619 586
		mu 0 5 40 41 290 236 289
		f 4 -3 -588 -618 620
		mu 0 4 290 139 287 236
		f 4 3 12 -623 621
		mu 0 4 290 41 291 237
		f 4 13 105 -624 622
		mu 0 4 291 39 292 237
		f 4 106 -39 -625 623
		mu 0 4 292 140 293 237
		f 4 -12 2 -622 624
		mu 0 4 293 139 290 237
		f 4 -627 625 437 425
		mu 0 4 294 239 238 25
		f 4 626 22 398 -634
		mu 0 4 239 294 23 301
		f 4 -628 633 399 -22
		mu 0 4 295 239 301 175
		f 4 7 16 -630 628
		mu 0 4 296 8 297 240
		f 4 17 107 -631 629
		mu 0 4 297 3 298 240
		f 4 108 -16 -632 630
		mu 0 4 298 191 299 240
		f 4 -15 6 -629 631
		mu 0 4 299 190 296 240
		f 4 28 632 -13 -28
		mu 0 4 40 300 291 41
		f 4 109 -14 -633 29
		mu 0 4 36 39 291 300
		f 4 -637 -854 -440 432
		mu 0 4 304 242 276 24
		f 4 637 -426 -441 853
		mu 0 4 242 294 25 276
		f 4 110 -20 -641 639
		mu 0 4 305 174 306 243
		f 7 -639 640 -19 -424 436 -626 627
		mu 0 7 295 243 306 173 172 238 239
		f 4 111 400 -642 636
		mu 0 4 304 22 307 242
		f 4 641 401 -23 -638
		mu 0 4 242 307 23 294
		f 4 24 147 -644 642
		mu 0 4 286 2 308 244
		f 4 148 139 -645 643
		mu 0 4 308 5 309 244
		f 4 140 82 -646 644
		mu 0 4 309 4 310 244
		f 4 83 23 -643 645
		mu 0 4 310 0 286 244
		f 4 113 -37 -647 19
		mu 0 4 174 193 311 306
		f 4 18 646 -36 -34
		mu 0 4 173 306 311 162
		f 4 8 438 -38 -35
		mu 0 4 69 312 313 71
		f 3 9 596 -40
		mu 0 3 141 314 315
		f 4 -89 114 -649 647
		mu 0 4 316 36 317 245
		f 4 115 597 -650 648
		mu 0 4 317 34 318 245
		f 4 598 -33 -651 649
		mu 0 4 318 35 319 245
		f 4 -32 -90 -648 650
		mu 0 4 319 37 316 245
		f 5 -592 -653 651 45 -44
		mu 0 5 121 321 246 320 124
		f 4 -591 599 -654 652
		mu 0 4 321 120 322 246
		f 4 600 588 -655 653
		mu 0 4 322 127 323 246
		f 4 589 44 -652 654
		mu 0 4 323 126 320 246
		f 4 51 116 -657 655
		mu 0 4 324 125 325 247
		f 4 117 -48 -658 656
		mu 0 4 325 123 326 247
		f 4 -47 -46 -659 657
		mu 0 4 326 124 320 247
		f 4 -45 50 -656 658
		mu 0 4 320 126 324 247
		f 4 -432 443 -662 660
		mu 0 4 328 158 248 249
		f 5 444 430 56 -660 661
		mu 0 5 248 159 160 327 249
		f 4 62 118 -664 662
		mu 0 4 329 211 330 250
		f 4 119 -61 -665 663
		mu 0 4 330 213 331 250
		f 4 -60 -59 -666 664
		mu 0 4 331 212 332 250
		f 4 -58 61 -663 665
		mu 0 4 332 210 329 250
		f 4 98 71 -668 666
		mu 0 4 333 93 334 251
		f 4 72 149 -669 667
		mu 0 4 334 96 335 251
		f 4 150 -124 -670 668
		mu 0 4 335 95 336 251
		f 4 -123 97 -667 669
		mu 0 4 336 94 333 251
		f 4 120 -65 -671 47
		mu 0 4 123 122 337 326
		f 4 43 46 670 -64
		mu 0 4 121 124 326 337
		f 4 -62 -137 -673 671
		mu 0 4 329 210 338 252
		f 4 -136 151 -674 672
		mu 0 4 338 208 339 252
		f 4 152 -126 -675 673
		mu 0 4 339 209 340 252
		f 4 -125 -63 -672 674
		mu 0 4 340 211 329 252
		f 5 675 68 42 -443 854
		mu 0 5 253 341 73 351 277
		f 4 -68 -677 -855 -442
		mu 0 4 473 342 253 277
		f 4 676 -395 -414 845
		mu 0 4 253 342 103 467
		f 4 -676 -846 -413 395
		mu 0 4 341 253 467 76
		f 4 677 65 -420 848
		mu 0 4 254 328 228 470
		f 4 -679 -849 -419 396
		mu 0 4 343 254 470 229
		f 4 70 121 -681 679
		mu 0 4 344 161 345 255
		f 4 680 -398 -410 843
		mu 0 4 255 345 195 465
		f 4 -682 -844 -409 -67
		mu 0 4 327 255 465 194
		f 4 -57 69 -680 681
		mu 0 4 327 160 344 255
		f 4 58 -135 -684 682
		mu 0 4 332 212 346 256
		f 4 -134 153 -685 683
		mu 0 4 346 214 347 256
		f 4 154 135 -686 684
		mu 0 4 347 208 338 256
		f 4 136 57 -683 685
		mu 0 4 338 210 332 256
		f 4 74 155 -688 686
		mu 0 4 348 90 349 257
		f 4 156 -73 -689 687
		mu 0 4 349 96 334 257
		f 4 -72 -42 -690 688
		mu 0 4 334 93 350 257
		f 4 -41 73 -687 689
		mu 0 4 350 92 348 257
		f 4 76 35 690 -70
		mu 0 4 160 162 311 344
		f 4 126 -71 -691 36
		mu 0 4 193 161 344 311
		f 4 75 37 445 -43
		mu 0 4 73 71 313 351
		f 4 77 11 691 -51
		mu 0 4 126 139 293 324
		f 4 127 -52 -692 38
		mu 0 4 140 125 324 293
		f 4 78 39 601 -53
		mu 0 4 143 141 315 352
		f 4 55 602 -694 692
		mu 0 4 353 149 354 258
		f 4 603 592 -695 693
		mu 0 4 354 234 355 258
		f 4 593 101 -696 694
		mu 0 4 355 148 356 258
		f 4 102 54 -693 695
		mu 0 4 356 147 353 258
		f 4 -106 80 -698 696
		mu 0 4 357 39 358 259
		f 4 81 -6 -699 697
		mu 0 4 358 38 359 259
		f 4 -5 -93 -700 698
		mu 0 4 359 141 360 259
		f 4 -80 -107 -697 699
		mu 0 4 360 142 357 259
		f 4 -108 84 -702 700
		mu 0 4 361 3 362 260
		f 4 85 -2 -703 701
		mu 0 4 362 1 283 260
		f 4 -1 -84 -704 702
		mu 0 4 283 0 310 260
		f 4 -83 -109 -701 703
		mu 0 4 310 4 361 260
		f 4 88 704 -81 -110
		mu 0 4 36 316 358 39
		f 4 -82 -705 89 -11
		mu 0 4 38 358 316 37
		f 4 705 -433 448 719
		mu 0 4 261 304 24 265
		f 4 -707 -720 449 -31
		mu 0 4 302 261 265 371
		f 4 20 -88 -710 708
		mu 0 4 303 69 364 262
		f 4 -87 -111 -708 709
		mu 0 4 364 70 363 262
		f 4 -138 157 -712 710
		mu 0 4 365 7 366 263
		f 4 158 -27 -713 711
		mu 0 4 366 6 284 263
		f 4 -26 -86 -714 712
		mu 0 4 284 1 362 263
		f 4 -85 -139 -711 713
		mu 0 4 362 3 365 263
		f 4 -140 159 -716 714
		mu 0 4 367 188 368 264
		f 4 160 129 -717 715
		mu 0 4 368 189 369 264
		f 4 130 14 -718 716
		mu 0 4 369 190 299 264
		f 4 15 -141 -715 717
		mu 0 4 299 191 367 264
		f 4 86 718 -91 -114
		mu 0 4 70 364 370 72
		f 4 34 -92 -719 87
		mu 0 4 69 71 370 364
		f 4 -117 95 -722 720
		mu 0 4 372 144 373 266
		f 4 96 48 -723 721
		mu 0 4 373 143 374 266
		f 4 49 -95 -724 722
		mu 0 4 374 145 375 266
		f 4 -94 -118 -721 723
		mu 0 4 375 146 372 266
		f 4 -119 99 -726 724
		mu 0 4 376 91 377 267
		f 4 100 40 -727 725
		mu 0 4 377 92 350 267
		f 4 41 -99 -728 726
		mu 0 4 350 93 333 267
		f 4 -98 -120 -725 727
		mu 0 4 333 94 376 267
		f 4 60 122 -730 728
		mu 0 4 331 213 378 268
		f 4 123 161 -731 729
		mu 0 4 378 215 379 268
		f 4 162 133 -732 730
		mu 0 4 379 214 346 268
		f 4 134 59 -729 731
		mu 0 4 346 212 331 268
		f 4 93 732 -102 -121
		mu 0 4 146 375 356 148
		f 4 53 -103 -733 94
		mu 0 4 145 147 356 375
		f 4 -100 124 -735 733
		mu 0 4 377 91 380 269
		f 4 125 163 -736 734
		mu 0 4 380 89 381 269
		f 4 164 -75 -737 735
		mu 0 4 381 90 348 269
		f 4 -74 -101 -734 736
		mu 0 4 348 92 377 269
		f 4 737 -397 -408 842
		mu 0 4 270 382 104 464
		f 4 -739 -843 -407 394
		mu 0 4 342 270 464 103
		f 4 -122 103 -741 739
		mu 0 4 383 74 384 271
		f 4 104 -69 -742 740
		mu 0 4 384 73 341 271
		f 4 741 -396 -422 849
		mu 0 4 271 341 76 471
		f 4 -740 -850 -421 397
		mu 0 4 383 271 471 75
		f 4 90 742 -104 -127
		mu 0 4 72 370 384 74
		f 4 -105 -743 91 -76
		mu 0 4 73 384 370 71
		f 4 79 743 -96 -128
		mu 0 4 142 360 373 144
		f 4 -97 -744 92 -79
		mu 0 4 143 373 360 141
		f 4 -593 604 -746 744
		mu 0 4 385 119 386 272
		f 4 605 590 -747 745
		mu 0 4 386 120 321 272
		f 4 591 63 -748 746
		mu 0 4 321 121 337 272
		f 4 64 -594 -745 747
		mu 0 4 337 122 385 272
		f 4 -142 166 180 -757
		mu 0 4 285 6 54 390
		f 4 -143 756 181 -166
		mu 0 4 2 285 390 55
		f 4 -144 131 -750 748
		mu 0 4 387 9 388 273
		f 4 132 -8 -751 749
		mu 0 4 388 8 296 273
		f 4 -7 -131 -752 750
		mu 0 4 296 190 369 273
		f 4 -130 -145 -749 751
		mu 0 4 369 189 387 273
		f 4 -146 137 -754 752
		mu 0 4 389 7 365 274
		f 4 138 -18 -755 753
		mu 0 4 365 3 297 274
		f 4 -17 -133 -756 754
		mu 0 4 297 8 388 274
		f 4 -132 -147 -753 755
		mu 0 4 388 9 389 274
		f 4 -148 165 182 -758
		mu 0 4 308 2 55 391
		f 4 -149 757 183 175
		mu 0 4 5 308 391 68
		f 4 -150 167 184 -759
		mu 0 4 335 96 97 392
		f 4 -151 758 185 -170
		mu 0 4 95 335 392 110
		f 4 -152 -174 186 -760
		mu 0 4 339 208 206 393
		f 4 -153 759 187 -171
		mu 0 4 209 339 393 207
		f 4 -154 -173 188 -761
		mu 0 4 347 214 216 394
		f 4 -155 760 189 173
		mu 0 4 208 347 394 206
		f 4 -156 168 190 -762
		mu 0 4 349 90 88 395
		f 4 -157 761 191 -168
		mu 0 4 96 349 395 97
		f 4 -158 -175 192 -763
		mu 0 4 366 7 10 396
		f 4 -159 762 193 -167
		mu 0 4 6 366 396 54
		f 4 -160 -176 194 -764
		mu 0 4 368 188 186 397
		f 6 -161 763 195 -178 766 144
		mu 0 6 189 368 397 187 400 387
		f 4 -162 169 196 -765
		mu 0 4 379 215 217 398
		f 4 -163 764 197 172
		mu 0 4 214 379 398 216
		f 4 -164 170 198 -766
		mu 0 4 381 89 87 399
		f 4 -165 765 199 -169
		mu 0 4 90 381 399 88
		f 4 -767 -177 171 143
		mu 0 4 387 400 11 9
		f 4 -768 -179 174 145
		mu 0 4 389 401 10 7
		f 4 -172 -180 767 146
		mu 0 4 9 11 401 389
		f 4 -181 201 216 -769
		mu 0 4 390 54 53 402
		f 4 -182 768 217 -201
		mu 0 4 55 390 402 56
		f 4 -183 200 218 -770
		mu 0 4 391 55 56 403
		f 4 -184 769 219 211
		mu 0 4 68 391 403 67
		f 4 -185 202 220 -771
		mu 0 4 392 97 98 404
		f 4 -186 770 221 -205
		mu 0 4 110 392 404 109
		f 4 -187 -210 222 -772
		mu 0 4 393 206 204 405
		f 4 -188 771 223 -206
		mu 0 4 207 393 405 205
		f 4 -189 -209 224 -773
		mu 0 4 394 216 218 406
		f 4 -190 772 225 209
		mu 0 4 206 394 406 204
		f 4 -191 203 226 -774
		mu 0 4 395 88 86 407
		f 4 -192 773 227 -203
		mu 0 4 97 395 407 98
		f 4 -193 -211 228 -775
		mu 0 4 396 10 12 408
		f 4 -194 774 229 -202
		mu 0 4 54 396 408 53
		f 4 -195 -212 230 -776
		mu 0 4 397 186 184 409
		f 4 -196 775 231 206
		mu 0 4 187 397 409 185
		f 4 -197 204 232 -777
		mu 0 4 398 217 219 410
		f 4 -198 776 233 208
		mu 0 4 216 398 410 218
		f 4 -199 205 234 -778
		mu 0 4 399 87 85 411
		f 4 -200 777 235 -204
		mu 0 4 88 399 411 86
		f 4 -779 -213 207 176
		mu 0 4 400 412 13 11
		f 4 -207 -214 778 177
		mu 0 4 187 185 412 400
		f 4 -780 -215 210 178
		mu 0 4 401 413 12 10
		f 4 -208 -216 779 179
		mu 0 4 11 13 413 401
		f 4 -217 237 252 -781
		mu 0 4 402 53 52 414
		f 4 -218 780 253 -237
		mu 0 4 56 402 414 57
		f 4 -219 236 254 -782
		mu 0 4 403 56 57 415
		f 4 -220 781 255 247
		mu 0 4 67 403 415 66
		f 4 -221 238 256 -783
		mu 0 4 404 98 99 416
		f 4 -222 782 257 -241
		mu 0 4 109 404 416 108
		f 4 -223 -246 258 -784
		mu 0 4 405 204 202 417
		f 4 -224 783 259 -242
		mu 0 4 205 405 417 203
		f 4 -225 -245 260 -785
		mu 0 4 406 218 220 418
		f 4 -226 784 261 245
		mu 0 4 204 406 418 202
		f 4 -227 239 262 -786
		mu 0 4 407 86 84 419
		f 4 -228 785 263 -239
		mu 0 4 98 407 419 99
		f 4 -229 -247 264 -787
		mu 0 4 408 12 14 420
		f 4 -230 786 265 -238
		mu 0 4 53 408 420 52
		f 4 -231 -248 266 -788
		mu 0 4 409 184 182 421
		f 4 -232 787 267 242
		mu 0 4 185 409 421 183
		f 4 -233 240 268 -789
		mu 0 4 410 219 221 422
		f 4 -234 788 269 244
		mu 0 4 218 410 422 220
		f 4 -235 241 270 -790
		mu 0 4 411 85 83 423
		f 4 -236 789 271 -240
		mu 0 4 86 411 423 84
		f 4 -791 -249 243 212
		mu 0 4 412 424 15 13
		f 4 -243 -250 790 213
		mu 0 4 185 183 424 412
		f 4 -792 -251 246 214
		mu 0 4 413 425 14 12
		f 4 -244 -252 791 215
		mu 0 4 13 15 425 413
		f 4 -253 273 288 -793
		mu 0 4 414 52 51 426
		f 4 -254 792 289 -273
		mu 0 4 57 414 426 58
		f 4 -255 272 290 -794
		mu 0 4 415 57 58 427
		f 4 -256 793 291 283
		mu 0 4 66 415 427 65
		f 4 -257 274 292 -795
		mu 0 4 416 99 100 428
		f 4 -258 794 293 -277
		mu 0 4 108 416 428 107
		f 4 -259 -282 294 -796
		mu 0 4 417 202 200 429
		f 4 -260 795 295 -278
		mu 0 4 203 417 429 201
		f 4 -261 -281 296 -797
		mu 0 4 418 220 222 430
		f 4 -262 796 297 281
		mu 0 4 202 418 430 200
		f 4 -263 275 298 -798
		mu 0 4 419 84 82 431
		f 4 -264 797 299 -275
		mu 0 4 99 419 431 100
		f 4 -265 -283 300 -799
		mu 0 4 420 14 16 432
		f 4 -266 798 301 -274
		mu 0 4 52 420 432 51
		f 4 -267 -284 302 -800
		mu 0 4 421 182 180 433
		f 4 -268 799 303 278
		mu 0 4 183 421 433 181
		f 4 -269 276 304 -801
		mu 0 4 422 221 223 434
		f 4 -270 800 305 280
		mu 0 4 220 422 434 222
		f 4 -271 277 306 -802
		mu 0 4 423 83 81 435
		f 4 -272 801 307 -276
		mu 0 4 84 423 435 82
		f 4 -803 -285 279 248
		mu 0 4 424 436 17 15
		f 4 -279 -286 802 249
		mu 0 4 183 181 436 424
		f 4 -804 -287 282 250
		mu 0 4 425 437 16 14
		f 4 -280 -288 803 251
		mu 0 4 15 17 437 425
		f 4 -289 309 324 -805
		mu 0 4 426 51 50 438
		f 4 -290 804 325 -309
		mu 0 4 58 426 438 59
		f 4 -291 308 326 -806
		mu 0 4 427 58 59 439
		f 4 -292 805 327 319
		mu 0 4 65 427 439 64
		f 4 -293 310 328 -807
		mu 0 4 428 100 101 440
		f 4 -294 806 329 -313
		mu 0 4 107 428 440 106
		f 4 -295 -318 330 -808
		mu 0 4 429 200 198 441
		f 4 -296 807 331 -314
		mu 0 4 201 429 441 199
		f 4 -297 -317 332 -809
		mu 0 4 430 222 224 442
		f 4 -298 808 333 317
		mu 0 4 200 430 442 198
		f 4 -299 311 334 -810
		mu 0 4 431 82 80 443
		f 4 -300 809 335 -311
		mu 0 4 100 431 443 101
		f 4 -301 -319 336 -811
		mu 0 4 432 16 18 444
		f 4 -302 810 337 -310
		mu 0 4 51 432 444 50
		f 4 -303 -320 338 -812
		mu 0 4 433 180 178 445
		f 4 -304 811 339 314
		mu 0 4 181 433 445 179
		f 4 -305 312 340 -813
		mu 0 4 434 223 225 446
		f 4 -306 812 341 316
		mu 0 4 222 434 446 224
		f 4 -307 313 342 -814
		mu 0 4 435 81 79 447
		f 4 -308 813 343 -312
		mu 0 4 82 435 447 80
		f 4 -815 -321 315 284
		mu 0 4 436 448 19 17
		f 4 -315 -322 814 285
		mu 0 4 181 179 448 436
		f 4 -816 -323 318 286
		mu 0 4 437 449 18 16
		f 4 -316 -324 815 287
		mu 0 4 17 19 449 437
		f 4 -325 345 360 -817
		mu 0 4 438 50 49 450
		f 4 -326 816 361 -345
		mu 0 4 59 438 450 60
		f 4 -327 344 362 -818
		mu 0 4 439 59 60 451
		f 4 -328 817 363 355
		mu 0 4 64 439 451 63
		f 4 -329 346 364 -819
		mu 0 4 440 101 102 452
		f 4 -330 818 365 -349
		mu 0 4 106 440 452 105
		f 4 -331 -354 366 -820
		mu 0 4 441 198 196 453
		f 4 -332 819 367 -350
		mu 0 4 199 441 453 197
		f 4 -333 -353 368 -821
		mu 0 4 442 224 226 454
		f 4 -334 820 369 353
		mu 0 4 198 442 454 196
		f 4 -335 347 370 -822
		mu 0 4 443 80 78 455
		f 4 -336 821 371 -347
		mu 0 4 101 443 455 102
		f 4 -337 -355 372 -823
		mu 0 4 444 18 20 456
		f 4 -338 822 373 -346
		mu 0 4 50 444 456 49
		f 4 -339 -356 374 -824
		mu 0 4 445 178 176 457
		f 4 -340 823 375 350
		mu 0 4 179 445 457 177
		f 4 -341 348 376 -825
		mu 0 4 446 225 227 458
		f 4 -342 824 377 352
		mu 0 4 224 446 458 226
		f 4 -343 349 378 -826
		mu 0 4 447 79 77 459
		f 4 -344 825 379 -348
		mu 0 4 80 447 459 78
		f 4 -827 -357 351 320
		mu 0 4 448 460 21 19
		f 4 -351 -358 826 321
		mu 0 4 179 177 460 448
		f 4 -828 -359 354 322
		mu 0 4 449 461 20 18
		f 4 -352 -360 827 323
		mu 0 4 19 21 461 449
		f 4 -361 381 402 -829
		mu 0 4 450 49 48 462
		f 4 -362 828 403 -381
		mu 0 4 60 450 462 61
		f 4 -363 380 404 -830
		mu 0 4 451 60 61 463
		f 4 -364 829 405 391
		mu 0 4 63 451 463 62
		f 4 -365 382 406 -831
		mu 0 4 452 102 103 464
		f 4 -366 830 407 -385
		mu 0 4 105 452 464 104
		f 4 -367 -390 408 -832
		mu 0 4 453 196 194 465
		f 4 -368 831 409 -386
		mu 0 4 197 453 465 195
		f 4 -369 -389 410 -833
		mu 0 4 454 226 228 466
		f 4 -370 832 411 389
		mu 0 4 196 454 466 194
		f 4 -371 383 412 -834
		mu 0 4 455 78 76 467
		f 4 -372 833 413 -383
		mu 0 4 102 455 467 103
		f 4 -373 -391 414 -835
		mu 0 4 456 20 22 468
		f 4 -374 834 415 -382
		mu 0 4 49 456 468 48
		f 4 -375 -392 416 -836
		mu 0 4 457 176 192 469
		f 4 -376 835 417 386
		mu 0 4 177 457 469 175
		f 4 -377 384 418 -837
		mu 0 4 458 227 229 470
		f 4 -378 836 419 388
		mu 0 4 226 458 470 228
		f 4 -379 385 420 -838
		mu 0 4 459 77 75 471
		f 4 -380 837 421 -384
		mu 0 4 78 459 471 76
		f 4 -839 -399 387 356
		mu 0 4 460 301 23 21
		f 4 -387 -400 838 357
		mu 0 4 177 175 301 460
		f 4 -840 -401 390 358
		mu 0 4 461 307 22 20
		f 4 -388 -402 839 359
		mu 0 4 21 23 307 461
		f 4 -841 -403 393 -635
		mu 0 4 241 462 48 302
		f 4 -393 -404 840 635
		mu 0 4 303 61 462 241
		f 4 -842 -405 392 -709
		mu 0 4 262 463 61 303
		f 4 112 -406 841 707
		mu 0 4 363 62 463 262
		f 4 -845 -411 -66 -661
		mu 0 4 249 466 228 328
		f 4 66 -412 844 659
		mu 0 4 327 194 466 249
		f 4 -847 -415 -112 -706
		mu 0 4 261 468 22 304
		f 4 -394 -416 846 706
		mu 0 4 302 48 468 261
		f 4 -848 -417 -113 -640
		mu 0 4 243 469 192 305
		f 4 21 -418 847 638
		mu 0 4 295 175 469 243
		f 5 -851 -435 -9 -21 -636
		mu 0 5 241 275 312 69 303
		f 4 30 -436 850 634
		mu 0 4 302 371 275 241
		f 4 481 -852 -437 -453
		mu 0 4 171 472 238 172
		f 4 453 -438 851 463
		mu 0 4 27 25 238 472
		f 4 -439 422 464 -427
		mu 0 4 313 312 135 133
		f 4 33 -428 -853 423
		mu 0 4 173 162 163 172
		f 4 482 -856 -444 -457
		mu 0 4 156 474 248 158
		f 4 455 -445 855 465
		mu 0 4 157 159 248 474
		f 4 -446 426 466 -429
		mu 0 4 351 313 133 134
		f 4 -431 -857 427 -77
		mu 0 4 160 159 163 162
		f 4 -858 -447 431 -678
		mu 0 4 254 278 158 328
		f 4 128 -448 857 678
		mu 0 4 343 475 278 254
		f 4 483 -859 -449 -458
		mu 0 4 26 476 265 24
		f 4 -450 858 467 -425
		mu 0 4 371 265 476 47
		f 4 -860 -451 -129 -738
		mu 0 4 270 279 477 382
		f 4 -452 859 738 67
		mu 0 4 473 279 270 342
		f 4 434 -861 -459 -423
		mu 0 4 312 275 478 135
		f 4 424 -475 860 435
		mu 0 4 371 47 478 275
		f 4 -476 452 852 -455
		mu 0 4 164 171 172 163
		f 4 457 439 -862 -460
		mu 0 4 26 24 276 479
		f 4 -477 861 440 -454
		mu 0 4 27 479 276 25
		f 4 441 -863 -461 -430
		mu 0 4 473 277 480 112
		f 4 428 -478 862 442
		mu 0 4 351 134 480 277
		f 4 -479 454 856 -456
		mu 0 4 157 164 163 159
		f 4 456 446 -864 -462
		mu 0 4 156 158 278 481
		f 4 433 -480 863 447
		mu 0 4 475 230 481 278
		f 4 450 -865 -463 -434
		mu 0 4 477 279 482 111
		f 4 429 -481 864 451
		mu 0 4 473 112 482 279
		f 4 513 -866 -482 -485
		mu 0 4 170 483 472 171
		f 4 485 -464 865 495
		mu 0 4 29 27 472 483
		f 4 -465 468 496 -471
		mu 0 4 133 135 136 131
		f 4 514 -867 -483 -489
		mu 0 4 154 484 474 156
		f 4 487 -466 866 497
		mu 0 4 155 157 474 484
		f 4 -467 470 498 -472
		mu 0 4 134 133 131 132
		f 4 515 -868 -484 -490
		mu 0 4 28 485 476 26
		f 4 -468 867 499 -470
		mu 0 4 47 476 485 46
		f 4 458 -869 -491 -469
		mu 0 4 135 478 486 136
		f 4 469 -507 868 474
		mu 0 4 47 46 486 478
		f 4 -508 484 475 -487
		mu 0 4 165 170 171 164
		f 4 489 459 -870 -492
		mu 0 4 28 26 479 487
		f 4 -509 869 476 -486
		mu 0 4 29 487 479 27
		f 4 460 -871 -493 -473
		mu 0 4 112 480 488 114
		f 4 471 -510 870 477
		mu 0 4 134 132 488 480
		f 4 -511 486 478 -488
		mu 0 4 155 165 164 157
		f 4 488 461 -872 -494
		mu 0 4 154 156 481 489
		f 4 473 -512 871 479
		mu 0 4 230 231 489 481
		f 4 462 -873 -495 -474
		mu 0 4 111 482 490 113
		f 4 472 -513 872 480
		mu 0 4 112 114 490 482
		f 4 545 -874 -514 -517
		mu 0 4 169 491 483 170
		f 4 517 -496 873 527
		mu 0 4 31 29 483 491
		f 4 -497 500 528 -503
		mu 0 4 131 136 137 129
		f 4 546 -875 -515 -521
		mu 0 4 152 492 484 154
		f 4 519 -498 874 529
		mu 0 4 153 155 484 492
		f 4 -499 502 530 -504
		mu 0 4 132 131 129 130
		f 4 547 -876 -516 -522
		mu 0 4 30 493 485 28
		f 4 -500 875 531 -502
		mu 0 4 46 485 493 45
		f 4 490 -877 -523 -501
		mu 0 4 136 486 494 137
		f 4 501 -539 876 506
		mu 0 4 46 45 494 486
		f 4 -540 516 507 -519
		mu 0 4 166 169 170 165
		f 4 521 491 -878 -524
		mu 0 4 30 28 487 495
		f 4 -541 877 508 -518
		mu 0 4 31 495 487 29
		f 4 492 -879 -525 -505
		mu 0 4 114 488 496 116
		f 4 503 -542 878 509
		mu 0 4 132 130 496 488
		f 4 -543 518 510 -520
		mu 0 4 153 166 165 155
		f 4 520 493 -880 -526
		mu 0 4 152 154 489 497
		f 4 505 -544 879 511
		mu 0 4 231 232 497 489
		f 4 494 -881 -527 -506
		mu 0 4 113 490 498 115
		f 4 504 -545 880 512
		mu 0 4 114 116 498 490
		f 4 575 -882 -546 -549
		mu 0 4 168 499 491 169
		f 4 549 -528 881 559
		mu 0 4 33 31 491 499
		f 3 -529 532 -535
		mu 0 3 129 137 138
		f 4 576 -883 -547 -553
		mu 0 4 150 500 492 152
		f 4 551 -530 882 560
		mu 0 4 151 153 492 500
		f 4 -531 534 561 -536
		mu 0 4 130 129 138 128
		f 4 577 -884 -548 -554
		mu 0 4 32 501 493 30
		f 4 -532 883 562 -534
		mu 0 4 45 493 501 44
		f 4 522 -885 -555 -533
		mu 0 4 137 494 502 138
		f 4 533 -569 884 538
		mu 0 4 45 44 502 494
		f 4 -570 548 539 -551
		mu 0 4 167 168 169 166
		f 4 553 523 -886 -556
		mu 0 4 32 30 495 503
		f 4 -571 885 540 -550
		mu 0 4 33 503 495 31
		f 4 524 -887 -557 -537
		mu 0 4 116 496 504 118
		f 4 535 -572 886 541
		mu 0 4 130 128 504 496
		f 4 -573 550 542 -552
		mu 0 4 151 167 166 153
		f 4 552 525 -888 -558
		mu 0 4 150 152 497 505
		f 4 537 -574 887 543
		mu 0 4 232 233 505 497
		f 4 526 -889 -559 -538
		mu 0 4 115 498 506 117
		f 4 536 -575 888 544
		mu 0 4 116 118 506 498
		f 4 606 -890 -576 -579
		mu 0 4 314 280 499 168
		f 4 579 -560 889 607
		mu 0 4 35 33 499 280
		f 4 608 -891 -577 -583
		mu 0 4 149 281 500 150
		f 4 581 -561 890 609
		mu 0 4 352 151 500 281
		f 4 -562 563 610 -566
		mu 0 4 128 138 42 127
		f 4 611 -892 -578 -584
		mu 0 4 34 507 501 32
		f 4 -563 891 612 -565
		mu 0 4 44 501 507 43
		f 4 554 -893 -595 -564
		mu 0 4 138 502 288 42
		f 4 564 -596 892 568
		mu 0 4 44 43 288 502
		f 4 -597 578 569 -581
		mu 0 4 315 314 168 167
		f 4 583 555 -894 -598
		mu 0 4 34 32 503 318
		f 4 -599 893 570 -580
		mu 0 4 35 318 503 33
		f 4 556 -895 -600 -567
		mu 0 4 118 504 322 120
		f 4 565 -601 894 571
		mu 0 4 128 127 322 504
		f 4 -602 580 572 -582
		mu 0 4 352 315 167 151
		f 4 582 557 -896 -603
		mu 0 4 149 150 505 354
		f 4 567 -604 895 573
		mu 0 4 233 234 354 505
		f 4 558 -897 -605 -568
		mu 0 4 117 506 386 119
		f 4 566 -606 896 574
		mu 0 4 118 120 386 506
		f 4 -10 4 -898 -607
		mu 0 4 314 141 359 280
		f 4 905 906 897 5
		mu 0 4 38 508 280 359
		f 4 -609 -56 -908 909
		mu 0 4 281 149 353 509
		f 4 908 907 -55 -54
		mu 0 4 145 509 353 147
		f 4 -49 52 -610 898
		mu 0 4 374 143 352 281
		f 4 584 899 -589 -611
		mu 0 4 42 287 323 127
		f 4 -590 -900 587 -78
		mu 0 4 126 323 287 139
		f 4 -612 -116 -902 900
		mu 0 4 507 34 317 282
		f 4 -115 -30 -903 901
		mu 0 4 317 36 300 282
		f 4 -29 -587 -904 902
		mu 0 4 300 40 289 282
		f 4 -586 -613 -901 903
		mu 0 4 289 43 507 282
		f 4 10 31 -905 -906
		mu 0 4 38 37 319 508
		f 4 32 -608 -907 904
		mu 0 4 319 35 280 508
		f 4 -50 -899 -910 -909
		mu 0 4 145 374 281 509;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "curveInk11" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape11" -p "curveInk11";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 73 0 no 2
		74 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73
		74
		0.12053899999999999 0.52521300000000004
		0.12024700000000001 0.52576400000000001
		0.122753 0.52640799999999999
		0.125162 0.52753099999999997
		0.12754599999999999 0.52834999999999999
		0.13012299999999999 0.52901900000000002
		0.132415 0.53004499999999999
		0.13473599999999999 0.53090599999999999
		0.136987 0.53175899999999998
		0.139206 0.53279600000000005
		0.141345 0.53396999999999994
		0.14372799999999999 0.53484699999999996
		0.145902 0.53596200000000005
		0.148198 0.53682399999999997
		0.15019399999999999 0.53789399999999998
		0.15259300000000001 0.53878400000000004
		0.15471599999999999 0.53963300000000003
		0.15698100000000001 0.54072100000000001
		0.15918499999999999 0.54154500000000005
		0.16137199999999999 0.54266400000000004
		0.16369800000000001 0.54346899999999998
		0.165965 0.54463700000000004
		0.16835800000000001 0.54545299999999997
		0.170658 0.546655
		0.17297100000000001 0.54747500000000004
		0.175343 0.54818999999999996
		0.17755000000000001 0.54930800000000002
		0.17999699999999999 0.55022499999999996
		0.18251700000000001 0.550956
		0.18506500000000001 0.55169699999999999
		0.187504 0.55242999999999998
		0.19001799999999999 0.55328100000000002
		0.19267500000000001 0.55440500000000004
		0.194914 0.55535699999999999
		0.19715299999999999 0.55630900000000005
		0.19966999999999999 0.55737999999999999
		0.20211599999999999 0.55821699999999996
		0.20457600000000001 0.55888700000000002
		0.20679400000000001 0.55988499999999997
		0.20900099999999999 0.56090899999999999
		0.211344 0.56208499999999995
		0.21366299999999999 0.56297799999999998
		0.21582799999999999 0.56413800000000003
		0.21788299999999999 0.56548100000000001
		0.220191 0.56696000000000002
		0.22250700000000001 0.56842300000000001
		0.22456699999999999 0.56972699999999998
		0.22673599999999999 0.57110099999999997
		0.22890099999999999 0.57243699999999997
		0.23122200000000001 0.57323500000000005
		0.23340900000000001 0.57455800000000001
		0.23578399999999999 0.57539700000000005
		0.23794899999999999 0.57670699999999997
		0.24024000000000001 0.57761600000000002
		0.24238899999999999 0.57876700000000003
		0.244645 0.57966099999999998
		0.24684300000000001 0.58068200000000003
		0.24910499999999999 0.58155599999999996
		0.251278 0.58269800000000005
		0.253668 0.58371799999999996
		0.25601699999999999 0.58454099999999998
		0.25845499999999999 0.58527399999999996
		0.26073200000000002 0.58605499999999999
		0.26310699999999998 0.58689100000000005
		0.26523099999999999 0.58808400000000005
		0.26743 0.58917600000000003
		0.26968199999999998 0.59006599999999998
		0.27175500000000002 0.59134699999999996
		0.27374700000000002 0.59253599999999995
		0.27574700000000002 0.593723
		0.27781699999999998 0.59495500000000001
		0.27981 0.59614100000000003
		0.28186600000000001 0.59736400000000001
		0.28401700000000002 0.59829100000000002
		;
createNode transform -n "curveInk41" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape41" -p "curveInk41";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 57 0 no 2
		58 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57
		58
		0.26935399999999998 0.60677899999999996
		0.26630100000000001 0.60589099999999996
		0.26446999999999998 0.60384300000000002
		0.26142300000000002 0.60300500000000001
		0.25870300000000002 0.60136199999999995
		0.25608500000000001 0.59982400000000002
		0.25346299999999999 0.59827900000000001
		0.25087599999999999 0.59675400000000001
		0.24815899999999999 0.59515300000000004
		0.24555199999999999 0.59361699999999995
		0.242835 0.59201599999999999
		0.23985000000000001 0.59095699999999995
		0.23713500000000001 0.589592
		0.23432700000000001 0.58789100000000005
		0.231654 0.58631999999999995
		0.22897100000000001 0.58474000000000004
		0.226327 0.58318199999999998
		0.223744 0.58166099999999998
		0.22115799999999999 0.58013700000000001
		0.21842700000000001 0.57852899999999996
		0.21584900000000001 0.57701000000000002
		0.21315500000000001 0.57542300000000002
		0.210423 0.57381400000000005
		0.20784900000000001 0.57229799999999997
		0.205036 0.57080900000000001
		0.202013 0.56946200000000002
		0.19900899999999999 0.56812300000000004
		0.19589200000000001 0.56673300000000004
		0.19292300000000001 0.56548500000000002
		0.18988099999999999 0.56420700000000001
		0.18687699999999999 0.56294500000000003
		0.18390300000000001 0.56184299999999998
		0.180872 0.56091899999999995
		0.17794399999999999 0.56005499999999997
		0.17493400000000001 0.55916600000000005
		0.171845 0.55825400000000003
		0.16888700000000001 0.55738100000000002
		0.16590299999999999 0.55649999999999999
		0.162935 0.55562400000000001
		0.15993399999999999 0.55473899999999998
		0.15689800000000001 0.55384299999999997
		0.15381 0.55293099999999995
		0.15085299999999999 0.55269500000000005
		0.14791099999999999 0.55195499999999997
		0.144901 0.55103400000000002
		0.141925 0.55015899999999995
		0.13886399999999999 0.54925500000000005
		0.13596 0.54839700000000002
		0.13284699999999999 0.54747800000000002
		0.129942 0.54662100000000002
		0.12692000000000001 0.54544400000000004
		0.124056 0.54409399999999997
		0.12124799999999999 0.54268700000000003
		0.11836099999999999 0.54172399999999998
		0.11554200000000001 0.54140200000000005
		0.1125 0.54073700000000002
		0.109678 0.53911500000000001
		0.106637 0.53824099999999997
		;
createNode transform -n "curveInk51" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape51" -p "curveInk51";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 2
		9 0 1 2 3 4 5 6 7 8
		9
		0.24043700000000001 0.64361199999999996
		0.24238899999999999 0.64323799999999998
		0.24474199999999999 0.64181999999999995
		0.24704400000000001 0.64026499999999997
		0.249447 0.63863300000000001
		0.251303 0.63681100000000002
		0.25233100000000003 0.63408900000000001
		0.25300299999999998 0.63115600000000005
		0.25387300000000002 0.62842100000000001
		;
createNode transform -n "curveInk61" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape61" -p "curveInk61";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 2
		10 0 1 2 3 4 5 6 7 8 9
		10
		0.108722 0.58617799999999998
		0.107752 0.58363600000000004
		0.107545 0.58080900000000002
		0.10686 0.57784999999999997
		0.106445 0.57486400000000004
		0.10647 0.572214
		0.10648299999999999 0.569577
		0.10710699999999999 0.56702799999999998
		0.108335 0.56432899999999997
		0.109759 0.56165600000000004
		;
createNode transform -n "curveInk71" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape71" -p "curveInk71";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 2
		7 0 1 2 3 4 5 6
		7
		0.22938800000000001 0.61760599999999999
		0.23200299999999999 0.61611400000000005
		0.23519499999999999 0.61591799999999997
		0.23829900000000001 0.61642200000000003
		0.241593 0.61656200000000005
		0.244814 0.61714800000000003
		0.24795700000000001 0.617726
		;
createNode transform -n "curveInk81" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape81" -p "curveInk81";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 2
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0.141961 0.57708599999999999
		0.14134099999999999 0.57416999999999996
		0.14072999999999999 0.57131500000000002
		0.13948199999999999 0.56849899999999998
		0.13769300000000001 0.56590399999999996
		0.13530400000000001 0.564272
		0.132663 0.56235299999999999
		0.12998199999999999 0.56072999999999995
		0.12729799999999999 0.55922099999999997
		0.124263 0.55778799999999995
		0.121225 0.55627800000000005
		0.118233 0.55466099999999996
		;
createNode transform -n "curveBrush111" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveBrushShape111" -p "curveBrush111";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 83 0 no 2
		84 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
		 82 83
		84
		0.12392 0.52340399999999998
		0.126245 0.52364599999999994
		0.12859100000000001 0.52388299999999999
		0.13090499999999999 0.52439000000000002
		0.13321 0.52480099999999996
		0.13550999999999999 0.52544800000000003
		0.13786499999999999 0.52611799999999997
		0.140212 0.52677499999999999
		0.14249600000000001 0.52743799999999996
		0.14465700000000001 0.52806500000000001
		0.146926 0.52872399999999997
		0.14910699999999999 0.52935699999999997
		0.151312 0.52999700000000005
		0.15351999999999999 0.53063800000000005
		0.15581600000000001 0.531304
		0.15804399999999999 0.53193199999999996
		0.16026399999999999 0.53219399999999994
		0.16262799999999999 0.53287799999999996
		0.16483 0.53352200000000005
		0.16717699999999999 0.53388800000000003
		0.16939499999999999 0.53442800000000001
		0.17171700000000001 0.53512300000000002
		0.173982 0.53578400000000004
		0.176317 0.53647199999999995
		0.17871000000000001 0.53696500000000003
		0.18116399999999999 0.53749400000000003
		0.183424 0.53815599999999997
		0.185722 0.53885099999999997
		0.18817300000000001 0.53957599999999994
		0.19042799999999999 0.54024000000000005
		0.19279399999999999 0.540937
		0.19427800000000001 0.54148600000000002
		0.19478500000000001 0.54184100000000002
		0.195299 0.54220199999999996
		0.195796 0.54254999999999998
		0.19633500000000001 0.542906
		0.19697400000000001 0.54301900000000003
		0.197519 0.54322400000000004
		0.198102 0.543377
		0.198795 0.54339199999999999
		0.19942199999999999 0.54360399999999998
		0.201181 0.54424600000000001
		0.20324800000000001 0.54455100000000001
		0.205399 0.54493899999999995
		0.20729400000000001 0.54619200000000001
		0.20911099999999999 0.54716399999999998
		0.21070800000000001 0.54775600000000002
		0.21124399999999999 0.54803100000000005
		0.211783 0.54830400000000001
		0.212368 0.54859999999999998
		0.212897 0.54886900000000005
		0.21346399999999999 0.54915700000000001
		0.21404100000000001 0.54941200000000001
		0.21460099999999999 0.54963799999999996
		0.21521899999999999 0.54988700000000001
		0.215834 0.55013500000000004
		0.21762200000000001 0.55117300000000002
		0.219698 0.55241799999999996
		0.221829 0.55369500000000005
		0.224054 0.55502799999999997
		0.2261 0.55625500000000005
		0.228385 0.55762400000000001
		0.230602 0.55895300000000003
		0.232653 0.56018299999999999
		0.234789 0.56146300000000005
		0.23686099999999999 0.56270500000000001
		0.239095 0.56401800000000002
		0.24131900000000001 0.56526799999999999
		0.24330599999999999 0.56638500000000003
		0.24540500000000001 0.56756399999999996
		0.24742400000000001 0.56869800000000004
		0.24947800000000001 0.56985200000000003
		0.25165900000000002 0.57107699999999995
		0.25374099999999999 0.57224699999999995
		0.25578699999999999 0.57339700000000005
		0.257913 0.57459099999999996
		0.26000800000000002 0.57576799999999995
		0.26203700000000002 0.57690799999999998
		0.26424500000000001 0.57815499999999997
		0.26648100000000002 0.57943699999999998
		0.26869500000000002 0.58032300000000003
		0.27075300000000002 0.58158200000000004
		0.27295399999999997 0.58289500000000005
		0.27502799999999999 0.58413499999999996
		;
createNode transform -n "curveInk641" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape641" -p "curveInk641";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 2
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		0.12779599999999999 0.53474699999999997
		0.126328 0.53308
		0.12567700000000001 0.53123900000000002
		0.124999 0.52932599999999996
		0.12481399999999999 0.52744199999999997
		0.12493799999999999 0.52560399999999996
		0.12507699999999999 0.52383400000000002
		0.125414 0.52195100000000005
		0.126224 0.52031400000000005
		0.127137 0.51868899999999996
		0.12803100000000001 0.51697199999999999
		0.128245 0.515123
		0.12914999999999999 0.51350300000000004
		0.12996199999999999 0.51187099999999996
		0.13150899999999999 0.51054999999999995
		0.133579 0.50946899999999995
		0.13553899999999999 0.50829999999999997
		0.137629 0.50737900000000002
		;
createNode transform -n "curveInk651" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape651" -p "curveInk651";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 2
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		0.26948499999999997 0.59182800000000002
		0.27156999999999998 0.59092699999999998
		0.27357399999999998 0.58984899999999996
		0.27521499999999999 0.58890900000000002
		0.27677600000000002 0.58782199999999996
		0.27802500000000002 0.586507
		0.278752 0.58491499999999996
		0.27990500000000001 0.58353200000000005
		0.28058699999999998 0.58195399999999997
		0.28139199999999998 0.58042000000000005
		0.282167 0.57891599999999999
		0.28226600000000002 0.577044
		0.282254 0.575214
		;
createNode transform -n "curveInk661" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape661" -p "curveInk661";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 2
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.17771999999999999 0.52514000000000005
		0.17641999999999999 0.52323399999999998
		0.17515 0.521258
		0.174126 0.519451
		0.17327100000000001 0.51756999999999997
		0.17232500000000001 0.51583500000000004
		0.17127800000000001 0.51404499999999997
		0.16978399999999999 0.51246599999999998
		0.168159 0.51090500000000005
		0.166188 0.50953300000000001
		0.16422300000000001 0.50821300000000003
		0.16179299999999999 0.50699499999999997
		0.159389 0.50590400000000002
		0.156886 0.50467899999999999
		0.15439900000000001 0.50357600000000002
		0.15204799999999999 0.502718
		;
createNode transform -n "curveInk671" -p "cn_body_render_meshShape";
	setAttr ".v" no;
createNode nurbsCurve -n "curveInkShape671" -p "curveInk671";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 2
		10 0 1 2 3 4 5 6 7 8 9
		10
		0.24576100000000001 0.558342
		0.24912999999999999 0.55791100000000005
		0.25324600000000003 0.55772100000000002
		0.25670500000000002 0.55757000000000001
		0.25886999999999999 0.55752500000000005
		0.26144400000000001 0.55782399999999999
		0.26386900000000002 0.55879199999999996
		0.26613300000000001 0.560442
		0.26841700000000002 0.56200600000000001
		0.27052199999999998 0.56370500000000001
		;
createNode transform -n "rt_arm_render_mesh";
	setAttr ".t" -type "double3" -6.2172594165445503 0 0 ;
	setAttr ".rp" -type "double3" 3.6341110064525282 1.4613276029757714 0 ;
	setAttr ".sp" -type "double3" 3.6341110064525282 1.4613276029757714 0 ;
createNode mesh -n "rt_arm_render_meshShape" -p "rt_arm_render_mesh";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:241]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 389 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.375 0.050000001 0.625
		 0.050000001 0.625 0 0.50628895 0 0.375 0.125 0.625 0.125 0.375 0.22499999 0.625 0.22499999
		 0.375 0.52499998 0.625 0.52499998 0.375 0.625 0.625 0.625 0.375 0.70000005 0.625
		 0.70000005 0.375 0.75000006 0.50722021 0.75000006 0.625 0.75000006 0.875 0.050000001
		 0.875 0 0.73122257 0 0.875 0.125 0.875 0.22499999 0.125 0 0.125 0.050000001 0.27573818
		 0 0.125 0.125 0.125 0.22499999 0.375 0 0.375 0.050000001 0.625 0.050000001 0.625
		 0 0.5 0 0.375 0.125 0.625 0.125 0.375 0.2 0.625 0.2 0.375 0.25 0.625 0.25 0.375 0.5
		 0.625 0.5 0.375 0.55000001 0.625 0.55000001 0.375 0.625 0.625 0.625 0.375 0.70000005
		 0.625 0.70000005 0.375 0.75000006 0.5 0.75000006 0.625 0.75000006 0.875 0.050000001
		 0.875 0 0.75 0 0.875 0.125 0.875 0.2 0.875 0.25 0.125 0 0.125 0.050000001 0.26677647
		 0 0.125 0.125 0.125 0.2 0.125 0.25 0.375 0 0.375 0.050000001 0.625 0.050000001 0.625
		 0 0.49041998 0 0.375 0.1 0.625 0.1 0.375 0.17500001 0.625 0.17500001 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.375 0.57500005 0.625 0.57500005 0.375 0.65000004 0.625
		 0.65000004 0.375 0.70000005 0.625 0.70000005 0.375 0.75000006 0.5 0.75000006 0.625
		 0.75000006 0.875 0.050000001 0.875 0 0.74331951 0 0.875 0.1 0.875 0.17500001 0.875
		 0.25 0.125 0 0.125 0.050000001 0.29664305 0 0.125 0.1 0.125 0.17500001 0.125 0.25
		 0.375 0 0.375 0.050000001 0.625 0.050000001 0.625 0 0.375 0.125 0.625 0.125 0.375
		 0.2 0.625 0.2 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.55000001 0.625 0.55000001
		 0.375 0.625 0.625 0.625 0.375 0.70000005 0.625 0.70000005 0.375 0.75000006 0.625
		 0.75000006 0.875 0.050000001 0.875 0 0.74354458 0 0.875 0.125 0.875 0.2 0.875 0.25
		 0.125 0 0.125 0.050000001 0.23963675 0 0.125 0.125 0.125 0.2 0.125 0.25 0.36059317
		 0.72692025 0.37100223 0.74742889 0.39588165 0.73893654 0.38816929 0.71320182 0.37528285
		 0.76494533 0.40438232 0.75947905 0.38071468 0.78717244 0.38169271 0.80874747 0.41037965
		 0.81056368 0.40922859 0.78516716 0.3251631 0.67820102 0.33943748 0.69456065 0.3630386
		 0.67421579 0.34405237 0.65253866 0.61775577 0.12923858 0.67677844 0.15355021 0.68219018
		 0.13172092 0.6190415 0.11841282 0.54031515 0.39014691 0.55849415 0.31373188 0.50364608
		 0.32232016 0.50831491 0.3907491 0.47562328 0.33913413 0.4349291 0.3651185 0.48515984
		 0.41301519 0.46532199 0.43429735 0.3873997 0.44668078 0.4137637 0.50325447 0.47748455
		 0.46363869 0.73042965 0.17016476 0.78408086 0.18677932 0.77415091 0.1399467 0.73271263
		 0.13624009 0.5328536 0.26895195 0.51285976 0.23403361 0.47562391 0.23905927 0.48827285
		 0.27664247 0.42355034 0.25617278 0.44657677 0.29285792 0.81644964 0.20996983 0.82362044
		 0.18135452 0.8337965 0.1407465 0.50280172 0.18807481 0.45831412 0.18806046 0.41716108
		 0.20032874 0.1935778 0.36523303 0.18632609 0.33800077 0.12928949 0.35625699 0.13456242
		 0.3781569 0.35595208 0.10147159 0.35577801 0.15395293 0.36330873 0.1528489 0.36190748
		 0.099477582 0.18465406 0.16780254 0.21899819 0.2161347 0.22783595 0.20924634 0.19487488
		 0.16155154 0.33371416 0.47623658 0.36089078 0.5235635 0.72997439 0.21544471 0.78078341
		 0.24710023 0.79401088 0.23361196 0.14270273 0.40622315 0.20609196 0.40123489 0.26936105
		 0.39707863 0.61875272 0.10352011 0.68478763 0.086399756 0.68789631 0.032158282 0.61840832
		 0.085757867 0.77844483 0.085231379 0.78213286 0.038236868 0.73501456 0.035197575
		 0.73161626 0.085815564 0.82328409 0.07707835 0.81787252 0.04430351 0.41234222 0.38816234
		 0.36519986 0.27530065 0.28844643 0.31402907 0.35449901 0.35355175 0.40006447 0.32020956
		 0.31444877 0.21597785 0.27350247 0.25539348 0.24230427 0.28542536 0.36580491 0.20815329
		 0.35074884 0.7075243 0.37759444 0.68968832 0.43869734 0.55675876 0.48898724 0.49138811
		 0.38659295 0.56832272 0.078748904 0.39037958 0.082752645 0.41094077 0.075601161 0.37450016
		 0.15217325 0.12209263 0.16199887 0.11773854 0.35449955 0.052855827 0.36058226 0.049001895
		 0.54807538 0.22928061 0.54517895 0.19367447 0.57922089 0.26744509 0.57057923 0.38957739
		 0.6103664 0.30560955 0.38261762 0.82915193 0.41151786 0.83494413 0.1809009 0.31762761
		 0.12564975 0.34114009 0.21578185 0.26898402 0.41458577 0.17781954 0.4527261 0.17159687
		 0.4993912 0.17249089 0.5435245 0.17333642 0.84610701 0.074311972 0.83828688 0.047768749
		 0.83973551 0.20281622 0.85108149 0.18186235 0.85039806 0.17100534 0.073396228 0.36337689
		 0.81003493 0.2355679 0.8212595 0.23693798 0.85646522 0.11395361 0.85573506 0.1069918
		 0.82740027 0.10200793 0.85006344 0.16568765;
	setAttr ".uvst[0].uvsp[250:388]" 0.84918547 0.14095286 0.19972865 0.15858299
		 0.16681141 0.11560594 0.23453426 0.20402551 0.29424778 0.1923649 0.34699035 0.15524121
		 0.34897882 0.10380639 0.35085943 0.055162154 0.85690218 0.11811981 0.375 0.3125 0.375
		 0.36620569 0.39442107 0.36620569 0.39792413 0.3125 0.41666666 0.3125 0.41666666 0.36620569
		 0.45833331 0.36620569 0.45833331 0.3125 0.49999997 0.36620569 0.49999997 0.3125 0.52083331
		 0.36620569 0.51825422 0.3125 0.54166663 0.3125 0.54166663 0.36620569 0.58333331 0.36620569
		 0.58333331 0.3125 0.625 0.36620569 0.625 0.3125 0.375 0.38972554 0.41666663 0.39046028
		 0.45833331 0.39157635 0.49999994 0.39098358 0.54166663 0.39250797 0.58333331 0.39037576
		 0.625 0.38972554 0.375 0.41991138 0.375 0.44281113 0.41666663 0.44291943 0.41666666
		 0.41991138 0.45833331 0.44326261 0.45833331 0.41991138 0.49999997 0.44323012 0.49999997
		 0.41991138 0.54166663 0.44448757 0.54166663 0.41991138 0.58333331 0.44369286 0.58333331
		 0.41991138 0.625 0.44281113 0.625 0.41991138 0.375 0.47361708 0.375 0.49651223 0.41666666
		 0.49658501 0.41666666 0.47361708 0.45833331 0.49690542 0.45833331 0.47361708 0.49999997
		 0.49696594 0.49999997 0.47361708 0.54166663 0.49715403 0.54166663 0.47361708 0.58333331
		 0.49666119 0.58333331 0.47361708 0.625 0.49651223 0.625 0.47361708 0.375 0.52732277
		 0.375 0.55222708 0.41666666 0.55215847 0.41666666 0.52732277 0.45833331 0.55282354
		 0.45833331 0.52732277 0.49999994 0.5528388 0.49999997 0.52732277 0.54166663 0.55241477
		 0.54166663 0.52732277 0.58333331 0.55224675 0.58333331 0.52732277 0.625 0.55222708
		 0.625 0.52732277 0.375 0.58102846 0.375 0.6208275 0.41666666 0.62069875 0.41666666
		 0.58102846 0.45833331 0.62065214 0.45833331 0.58102846 0.49999994 0.6205169 0.49999997
		 0.58102846 0.54166663 0.62044227 0.54166663 0.58102846 0.58333325 0.60664356 0.58333331
		 0.58102846 0.625 0.6208275 0.625 0.58102846 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.58333331 0.63473415 0.625 0.68843985 0.578125 0.97906649 0.42187497 0.97906649
		 0.34374997 0.84375 0.4609375 0.77296674 0.57812506 0.70843351 0.65625 0.84375 0.42364362
		 0.72946024 0.41011393 0.70228493 0.42909649 0.75483644 0.43533903 0.81214398 0.43660685
		 0.78324175 0.38143018 0.65836179 0.37112683 0.64654487 0.35883826 0.63245106 0.3973183
		 0.67658401 0.43414 0.83947814 0.38937426 0.6674729 0.6164701 0.14006431 0.66593784
		 0.19727747 0.68274927 0.2462723 0.375 0.51051968 0.41666666 0.51066577 0.45833331
		 0.51117516 0.49999994 0.51084495 0.54166663 0.51063681 0.58333331 0.51041722 0.625
		 0.51051968 0.030856486 0.038916681 0.79695678 0.22328231 1 0 0.018813487 0.030794682
		 1 0.60463864 0.99416721 0 0.16494563 0 0 0.96420395 1 0.65900213 0.79582536 0 0 0
		 0.23210688 0.87693769 0.80447888 0.62512839 1 4.175872e-015;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 251 ".pt";
	setAttr ".pt[0:165]" -type "float3"  7.7184949 -0.45851636 0.060071904 7.7083135 
		-0.43712041 0.10659673 7.6943574 -0.43499392 0.15276004 7.7719665 -0.44604144 0.16763625 
		7.792532 -0.45260316 0.0719698 7.9223676 -0.43666783 0.20728312 7.9383488 -0.44452068 
		0.095394589 8.0578747 -0.42960778 0.24304701 8.0845709 -0.43842101 0.11886529 8.0560465 
		-0.58058602 0.2510466 8.0827322 -0.58691251 0.12689531 7.8834066 -0.56660599 0.20433426 
		7.8622112 -0.57320315 0.090020753 7.7705574 -0.55954236 0.17380017 7.7911229 -0.56841087 
		0.07813371 7.6903887 -0.55083466 0.16087499 7.7040973 -0.55792344 0.11222507 7.7157583 
		-0.56231278 0.065875724 7.6863728 -0.4929018 0.16018 7.7169881 -0.50240839 0.061658751 
		7.7310729 -0.46684077 -0.042420596 7.7280936 -0.46066821 0.0014642695 7.7222285 -0.45956257 
		0.044852275 7.8074145 -0.45496741 0.049846068 7.8061881 -0.4629007 -0.047490805 7.9587669 
		-0.44738305 0.055371668 7.9225945 -0.45684996 -0.055269059 8.0292082 -0.44457754 
		0.057931691 8.0276947 -0.45088524 -0.06228641 8.1031399 -0.44254023 0.060626887 8.1015301 
		-0.44831511 -0.067218281 8.1012993 -0.59107041 0.0686801 8.0996885 -0.59758157 -0.059165079 
		8.0274773 -0.58546293 0.065504447 8.0259628 -0.59225547 -0.054713659 7.8802719 -0.57626134 
		0.059172027 7.8823147 -0.58454251 -0.04604011 7.8060126 -0.57056367 0.055977497 7.8047867 
		-0.57848567 -0.041359399 7.7222962 -0.56560832 0.05234294 7.7289367 -0.57017535 0.0075522955 
		7.7294765 -0.5714829 -0.035391554 7.7212882 -0.51127511 0.047954958 7.7300858 -0.51245666 
		-0.041016582 7.6987004 -0.47221187 -0.15239859 7.7107282 -0.46867537 -0.11385821 
		7.7255039 -0.46617997 -0.065341584 7.7991085 -0.46532458 -0.081290707 7.7725768 -0.47251007 
		-0.17551039 7.8712254 -0.46245962 -0.09792868 7.8427181 -0.46923137 -0.19916297 7.9948182 
		-0.45509085 -0.12642717 7.9536805 -0.46061292 -0.23653485 8.087575 -0.45061737 -0.1478426 
		8.0531425 -0.45383483 -0.27012068 8.0857468 -0.59956598 -0.13984329 8.0513134 -0.60314327 
		-0.26212138 8.0132265 -0.59474951 -0.12355095 7.9806762 -0.59764457 -0.23872864 7.8697109 
		-0.58728921 -0.091306023 7.8412042 -0.59177637 -0.1925403 7.7976995 -0.5811618 -0.075126939 
		7.7711678 -0.58647263 -0.16934663 7.725039 -0.5721643 -0.057862669 7.7092404 -0.58103895 
		-0.10348684 7.6984916 -0.57806975 -0.1463301 7.7253008 -0.51388073 -0.060749687 7.6984668 
		-0.50708914 -0.15007348 7.4745979 -0.3989417 -0.23980021 7.5644708 -0.41183808 -0.17726664 
		7.6156511 -0.41193897 -0.22991526 7.5349145 -0.41332707 -0.29154009 7.6870995 -0.41393301 
		-0.29124963 7.6113968 -0.41626498 -0.37022692 7.7504382 -0.41429266 -0.34951684 7.6644869 
		-0.41843563 -0.4320991 7.7933764 -0.41387832 -0.39030457 7.7030497 -0.41928488 -0.47838822 
		7.7915406 -0.56075937 -0.38227412 7.7012415 -0.56482309 -0.47047952 7.7487059 -0.55275828 
		-0.3419393 7.6627827 -0.55536032 -0.42464322 7.6844678 -0.54041672 -0.28338116 7.6038442 
		-0.54053265 -0.35662302 7.611032 -0.52528518 -0.22251169 7.5335317 -0.52453727 -0.28554916 
		7.564043 -0.51725292 -0.17408657 7.4724641 -0.5127309 -0.23339419 7.5796356 -0.46124858 
		-0.18120161 7.4730425 -0.46699181 -0.23584463 6.9595318 -0.44041553 0.014916755 7.0310192 
		-0.44262162 0.0060165189 7.0269299 -0.45465526 0.009823069 6.9653826 -0.4464069 0.015576445 
		7.0287766 -0.45617968 0.020487402 6.9617081 -0.44715482 0.02124943 6.9628124 -0.44567218 
		0.026914872 7.0330911 -0.45501465 0.032346111 7.0347357 -0.44152886 0.035415024 6.9625101 
		-0.43991742 0.027994033 6.9602618 -0.43501741 0.026554644 7.0370426 -0.42862579 0.035218928 
		7.0347052 -0.42901233 0.018773058 6.9594932 -0.43434942 0.021125976 7.099545 -0.42418191 
		0.006623311 7.1021771 -0.423585 0.016151952 7.2803407 -0.38377237 -0.00047639199 
		7.2948737 -0.37431371 -0.029547419 7.108645 -0.44156802 0.043145079 7.1142044 -0.46509987 
		0.039550737 7.26441 -0.48246771 0.069523513 7.2569494 -0.41942507 0.086926021 7.0985274 
		-0.46442002 0.019287109 7.2666821 -0.5152598 0.013807144 7.2527323 -0.49547875 0.04260904 
		7.1047578 -0.46531588 0.0059134979 7.0870147 -0.44431239 0.00029141456 7.1987357 
		-0.43636084 -0.088252343 7.2526402 -0.50175387 -0.076296084 7.4760823 -0.38755643 
		-0.046295926 7.428812 -0.40634537 -0.00014696363 7.5488205 -0.43965241 -0.00029012049 
		7.5738473 -0.44171405 -0.06373664 7.4392695 -0.4308221 0.13584583 7.4231558 -0.50415868 
		0.10833164 7.5497837 -0.51979524 0.12683569 7.5523992 -0.44111386 0.15121387 7.4316421 
		-0.53094113 0.077034362 7.5578365 -0.5576902 0.083868034 7.6377282 -0.44570795 -0.0023522556 
		7.6727386 -0.46454462 -0.057920843 7.6625619 -0.44956395 -0.10271872 7.6263094 -0.53750098 
		0.13522948 7.6314082 -0.47746727 0.15598807 7.6455703 -0.56746155 0.091885507 7.5806193 
		-0.54652506 -0.1186529 7.6089015 -0.48225793 -0.14508033 7.6343484 -0.4870621 -0.14160657 
		7.6153073 -0.55112755 -0.12229846 7.7160993 -0.50057393 0.05345859 7.7156601 -0.56724381 
		0.057153933 7.7206392 -0.51173502 -0.050471794 7.721344 -0.5671255 -0.047000304 7.365169 
		-0.45167503 -0.18660292 7.4194775 -0.52205241 -0.18505903 7.4792032 -0.39056119 -0.11508058 
		7.596025 -0.43114823 -0.12994729 7.4529953 -0.53052723 -0.10785453 7.1028342 -0.42255253 
		0.02909234 7.1118326 -0.42033467 0.044536203 7.3129892 -0.35226268 0.06382367 7.2872224 
		-0.36328611 0.028792428 7.5788031 -0.38173437 0.064279832 7.4440675 -0.36112607 0.052212466 
		7.4534001 -0.35764453 0.1029648 7.5796728 -0.37669152 0.12448818 7.6642189 -0.43145314 
		0.096635751 7.6263747 -0.40455836 0.13777263 7.2776427 -0.51254201 -0.021696027 7.5812054 
		-0.58099616 0.018456439 7.42945 -0.550524 0.015601584 7.4411907 -0.54516858 -0.044473603 
		7.6150856 -0.57748049 -0.070380352 7.6269488 -0.585509 0.0081465067 7.6424017 -0.5801248 
		-0.091763049 7.6472197 -0.58010727 -0.048834082;
	setAttr ".pt[166:250]" 7.6481957 -0.56873322 0.042726453 6.9566889 -0.43562829 
		0.01661035 7.0295534 -0.42987514 0.0067622513 7.0841579 -0.42472851 -0.0011112429 
		7.3121581 -0.36235094 -0.08862453 7.4223742 -0.378921 -0.19834517 7.6250634 -0.45199737 
		-0.13029909 7.722446 -0.46783704 -0.052481808 7.7175293 -0.45841175 0.050431892 7.6774659 
		-0.45609716 0.055823613 6.9057221 -0.43724209 0.022080891 6.902308 -0.43679246 0.021822024 
		6.9036484 -0.43734264 0.02212215 6.9027791 -0.43727687 0.021792725 6.9028602 -0.43725684 
		0.022331689 6.902833 -0.43710026 0.022365071 6.901978 -0.43669492 0.022135006 6.9084182 
		-0.43795383 0.021525484 6.8446999 -0.43788224 0.01503662 6.8452048 -0.42726487 0.015337802 
		6.8439069 -0.44174328 0.023039315 6.8435335 -0.43783745 0.03089007 6.8440075 -0.42752671 
		0.031109519 6.8447614 -0.42428458 0.0231997 6.7837329 -0.41340429 0.0042754635 6.7849531 
		-0.43676016 0.0027251169 6.7415533 -0.43484294 -0.013270281 6.7403212 -0.39556095 
		-0.0067276135 6.7863798 -0.44963574 0.022414321 6.7411227 -0.46107334 0.018179262 
		6.7844009 -0.43926793 0.042768784 6.7398891 -0.44709927 0.056313973 6.7862315 -0.41743609 
		0.044384234 6.7389164 -0.40732566 0.064387813 6.7848554 -0.4048906 0.025686251 6.738975 
		-0.38169903 0.03213739 6.701622 -0.38103655 -0.019839458 6.7030683 -0.44132626 -0.032913178 
		6.6541195 -0.44529033 -0.057233125 6.6528149 -0.36228973 -0.028504081 6.7017479 -0.48320699 
		0.013400931 6.6537852 -0.51173478 0.0016570687 6.7010851 -0.46366662 0.07388664 6.6520901 
		-0.49626768 0.089489549 6.7013783 -0.40381271 0.087710224 6.6512232 -0.41130063 0.11915579 
		6.7004652 -0.36173162 0.040672909 6.6511288 -0.34412658 0.058922261 6.466383 -0.3365941 
		-0.07658042 6.4670911 -0.47698441 -0.1029503 6.2924356 -0.49186549 -0.10637714 6.2939754 
		-0.33833897 -0.095404983 6.4723878 -0.57111764 0.0046697147 6.2917485 -0.58137321 
		0.013301721 6.4697161 -0.52416217 0.13331501 6.2887235 -0.51219016 0.13869448 6.4653559 
		-0.38543704 0.15744764 6.2873654 -0.37115484 0.15102312 6.4648895 -0.29035452 0.055580787 
		6.2898884 -0.28363299 0.042039752 6.1301293 -0.33418885 -0.089097038 6.1293082 -0.48705435 
		-0.11663605 5.9105201 -0.49395233 -0.10837212 5.9106688 -0.34925959 -0.085797846 
		6.1293502 -0.58492529 0.0016496666 5.9124665 -0.58653772 0.010920167 6.1276274 -0.53096175 
		0.14343774 5.8533278 -0.5287202 0.14979088 6.1233578 -0.3822535 0.16081145 5.913969 
		-0.37954384 0.16679874 6.124764 -0.28956896 0.054540917 5.9754138 -0.29453984 0.051690787 
		5.7588797 -0.48974943 -0.06550163 5.7579513 -0.38194054 -0.050754726 5.7569427 -0.55493957 
		0.016600663 5.7600064 -0.51333749 0.12297535 5.7589588 -0.40324903 0.13777941 5.8548245 
		-0.30166006 0.052187949 5.7584944 -0.3383784 0.051832743 6.5803895 -0.45808944 -0.082106784 
		6.5800076 -0.34653783 -0.049346931 6.5809193 -0.54266274 -0.00077161193 6.5803022 
		-0.51593781 0.11014798 6.5792556 -0.40393043 0.1417543 6.5787244 -0.31872723 0.062749356;
	setAttr -s 251 ".vt";
	setAttr ".vt[0:165]"  -5.93111467 4.62014484 -0.1445643 -5.90661287 4.56865501 -0.25652727
		 -5.88034439 4.56351376 -0.36901084 -6.05979538 4.59012365 -0.40342015 -6.10928679 4.60591459 -0.17319684
		 -6.42173862 4.56756592 -0.49883121 -6.46019793 4.58646393 -0.22956908 -6.7478404 4.55057573 -0.58489776
		 -6.81208467 4.57178497 -0.28605181 -6.7434392 4.913908 -0.60414892 -6.8076601 4.92913294 -0.30537623
		 -6.32797909 4.88026476 -0.49173468 -6.27697134 4.89614105 -0.21663684 -6.056404114 4.86326599 -0.41825375
		 -6.10589552 4.88460827 -0.18803041 -5.87077522 4.84351969 -0.38862598 -5.90216351 4.86036253 -0.27081335
		 -5.92452908 4.86993313 -0.15853131 -5.86109161 4.70348644 -0.38694605 -5.92748928 4.7257719 -0.14838308
		 -5.96138477 4.64017773 0.10208606 -5.95421505 4.6253233 -0.0035237954 -5.94010019 4.62266254 -0.10793795
		 -6.14510155 4.61160421 -0.11995561 -6.1421504 4.63069582 0.11428762 -6.50933504 4.59335232 -0.13325308
		 -6.42228556 4.61613464 0.13300616 -6.67885399 4.58660078 -0.13941383 -6.67521 4.60178041 0.14989355
		 -6.85677195 4.58169794 -0.14589988 -6.85289669 4.59559536 0.16176221 -6.85234118 4.93913889 -0.1652801
		 -6.84846592 4.95480824 0.14238201 -6.67468739 4.9256444 -0.15763782 -6.6710434 4.94199085 0.13166957
		 -6.32043505 4.90350056 -0.14239873 -6.32535028 4.92342949 0.11079649 -6.14172792 4.8897891 -0.13471103
		 -6.13877773 4.90885353 0.099532261 -5.94026327 4.87786388 -0.12596439 -5.95624352 4.8888545 -0.018174758
		 -5.9575429 4.89200115 0.085170522 -5.9378376 4.74710989 -0.11540461 -5.95900869 4.74995327 0.098707266
		 -5.8834796 4.65310335 0.36675039 -5.91242456 4.64459276 0.27400216 -5.94798183 4.63858747 0.15724589
		 -6.12511349 4.63652897 0.19562779 -6.061264515 4.65382099 0.42236945 -6.29866409 4.62963438 0.23566742
		 -6.23006058 4.64593077 0.47928989 -6.59609318 4.61190128 0.30424964 -6.49709415 4.62519026 0.56922609
		 -6.81931496 4.60113573 0.35578632 -6.73645067 4.60887861 0.65005112 -6.81491375 4.95958376 0.33653581
		 -6.73204947 4.96819258 0.6308006 -6.64039326 4.9479928 0.29732797 -6.56205988 4.95495987 0.57450551
		 -6.2950201 4.93003941 0.21972987 -6.22641706 4.94083786 0.46335229 -6.12172222 4.91529369 0.18079455
		 -6.057873249 4.92807436 0.40753624 -5.94686365 4.893641 0.13924773 -5.90884399 4.91499805 0.24904327
		 -5.88297701 4.90785265 0.35214648 -5.94749403 4.7533803 0.1461954 -5.8829174 4.73703623 0.361155
		 -5.41799021 4.4717207 0.61165392 -5.60417509 4.50600052 0.44081107 -5.6905694 4.50778627 0.55597764
		 -5.51532269 4.51037407 0.71499628 -5.85556173 4.5128541 0.70089835 -5.67338133 4.518466 0.89095885
		 -6.0079874992 4.51371956 0.84111965 -5.80114412 4.52368975 1.039855599 -6.11131954 4.51272249 0.93927616
		 -5.89394522 4.52573347 1.15125132 -6.10690165 4.86619473 0.91995072 -5.88959408 4.87597418 1.13221884
		 -6.0038180351 4.84694004 0.82288414 -5.79704189 4.85320187 1.021912813 -5.84922791 4.81723976 0.68196273
		 -5.65520525 4.81751871 0.85822082 -5.68714762 4.78281689 0.54101169 -5.51196814 4.7827549 0.70032305
		 -5.60835934 4.76790857 0.43466765 -5.41446972 4.76082659 0.59623557 -5.61128139 4.62726307 0.44066373
		 -5.41589403 4.64456558 0.6024642 -4.67050743 4.61598969 0.053287171 -4.81126595 4.60831642 0.064533398
		 -4.80318499 4.69944715 0.038777746 -4.6823287 4.69237185 0.034573399 -4.80736208 4.70978165 -0.041251242
		 -4.67512226 4.71106815 -0.041130759 -4.67852688 4.6898036 -0.12239156 -4.81592226 4.6979785 -0.12764601
		 -4.81959105 4.59984398 -0.14928344 -4.67803335 4.60752964 -0.13846628 -4.67275953 4.53586388 -0.11945899
		 -4.82163525 4.50832748 -0.1455051 -4.81949949 4.50956345 -0.029246144 -4.67143965 4.52517605 -0.038621906
		 -4.93128729 4.50029993 0.028114224 -4.93726301 4.49752617 -0.022118852 -5.20766783 4.38891602 0.022816382
		 -5.22287941 4.36333275 0.1155568 -4.94865513 4.59106541 -0.16088393 -4.95715761 4.70842218 -0.14059423
		 -5.18791866 4.72603512 -0.21792427 -5.16767263 4.50705481 -0.27837247 -4.93059301 4.71275234 -0.038334418
		 -5.1842289 4.8363266 -0.024775166 -5.17173147 4.77571583 -0.12601708 -4.94023466 4.71376038 0.030284483
		 -4.91073132 4.60802794 0.067370772 -5.014812946 4.56585836 0.33301234 -5.1202898 4.78253508 0.27258369
		 -5.49625397 4.43529081 0.13079925 -5.42320538 4.4824872 0.0090650972 -5.60593319 4.5750885 0.0038651044
		 -5.63896894 4.58011866 0.16123629 -5.4381237 4.55116367 -0.36824298 -5.4204216 4.75815916 -0.29701763
		 -5.61861086 4.78085375 -0.32203332 -5.61876297 4.57884073 -0.3831147 -5.43454838 4.83210182 -0.20747353
		 -5.63218117 4.87673187 -0.21102375 -5.76464415 4.58968258 0.0067048888 -5.82821751 4.63494253 0.14023915
		 -5.80367994 4.59873199 0.24852291 -5.7494297 4.81649351 -0.33250904 -5.75772429 4.66800261 -0.38288611
		 -5.78589439 4.88833952 -0.22434902 -5.65552759 4.8419385 0.2984181 -5.68199921 4.67829752 0.35292006
		 -5.73565197 4.68937111 0.34252116 -5.71859026 4.84939194 0.3023985 -5.92535019 4.72135735 -0.12864922
		 -5.92429304 4.8817997 -0.13754214 -5.93627501 4.74821663 0.12146143 -5.93797112 4.88151503 0.11310722
		 -5.2443285 4.60872746 0.52205533 -5.34093237 4.79464388 0.49810427 -5.47753 4.44599771 0.3081218
		 -5.67172337 4.55394125 0.32123381 -5.43815422 4.81988573 0.29639351 -4.93755722 4.49249887 -0.089602269
		 -4.95029783 4.48427773 -0.16555709 -5.24069166 4.3011055 -0.18469806 -5.20683956 4.32597637 -0.075181469
		 -5.65737009 4.42969179 -0.15900436 -5.4410224 4.35979128 -0.13593258 -5.45707226 4.35162258 -0.27397174
		 -5.66328812 4.416646 -0.31072021 -5.80767488 4.55495501 -0.23334928 -5.74549007 4.4884634 -0.33803034
		 -5.20040274 4.82246971 0.094260611 -5.66948128 4.93113375 -0.044005603 -5.42894793 4.8871007 -0.03493809
		 -5.44300795 4.86788225 0.13120773 -5.72751951 4.91643429 0.17596532 -5.75098562 4.93502855 -0.018732782
		 -5.77597666 4.9189024 0.22569369 -5.78766012 4.91885948 0.1205502;
	setAttr ".vt[166:250]" -5.79002714 4.89100122 -0.10370384 -4.66457605 4.54371309 0.032271121
		 -4.80687141 4.51497555 0.059072457 -4.90237141 4.49973679 0.075126886 -5.21985292 4.33782148 0.28851676
		 -5.34194803 4.41454124 0.53044236 -5.72368765 4.60485077 0.31763631 -5.94062376 4.64257526 0.12629858
		 -5.92879152 4.61989307 -0.12136541 -5.83797932 4.61447811 -0.13461818 -4.54905224 4.62432384 -0.1293955
		 -4.54020786 4.68225002 -0.11935053 -4.54380655 4.53374863 -0.040464994 -4.54190636 4.5622921 -0.1190545
		 -4.541327 4.56536293 0.036771506 -4.5412426 4.6231246 0.049075115 -4.53916979 4.70655155 -0.041374244
		 -4.55437088 4.68482494 0.039040662 -4.37989378 4.56257963 -0.12397099 -4.38147211 4.67158937 -0.12255152
		 -4.37737942 4.52421045 -0.043683503 -4.37619019 4.56303024 0.035250146 -4.37766981 4.66889715 0.039599728
		 -4.38005066 4.70322132 -0.041637011 -4.14724159 4.66525507 -0.12509365 -4.15197754 4.57094145 -0.13194217
		 -3.90156436 4.57470322 -0.13762096 -3.89599895 4.66798115 -0.12160233 -4.15902758 4.51745224 -0.051796671
		 -3.90030241 4.51204157 -0.062491454 -4.15126038 4.56066942 0.0316904 -3.89473438 4.5455575 0.028146205
		 -4.16084337 4.65298033 0.041407567 -3.89188766 4.64003515 0.04732481 -4.15406656 4.70325518 -0.038218908
		 -3.891536 4.70070934 -0.029318681 -3.60420346 4.65827036 -0.1197708 -3.60798645 4.56247902 -0.14054306
		 -3.31544876 4.55927801 -0.14863707 -3.31178522 4.6590991 -0.1139932 -3.60240841 4.49620867 -0.066905163
		 -3.31467867 4.47929525 -0.077748001 -3.60244012 4.52700996 0.029094145 -3.31011534 4.49798536 0.027898846
		 -3.61063528 4.62275267 0.052425958 -3.3087759 4.60019302 0.063691229 -3.60331345 4.68939734 -0.023513673
		 -3.30856013 4.68105364 -0.0088149374 -2.73512983 4.65620708 -0.13868125 -2.73645234 4.5345149 -0.16153899
		 -2.38996625 4.52566862 -0.15497766 -2.39265561 4.64735603 -0.146281 -2.74866271 4.45234871 -0.06832698
		 -2.38876557 4.45472336 -0.060118482 -2.74318576 4.49332571 0.043636102 -2.38348103 4.50955915 0.039269619
		 -2.73501587 4.61404514 0.064636424 -2.381109 4.62134552 0.04904151 -2.7332406 4.69653749 -0.024065588
		 -2.38551688 4.69071674 -0.037340298 -2.10634136 4.64879513 -0.13928539 -2.10493302 4.53037643 -0.16061875
		 -1.71708226 4.52312279 -0.15860991 -1.71734571 4.64008331 -0.14036229 -2.10500526 4.45455885 -0.068987183
		 -1.72053373 4.4482832 -0.062181696 -2.10204887 4.49636269 0.040850911 -1.6054225 4.49295235 0.052957252
		 -2.094722509 4.6115613 0.054309629 -1.72427917 4.61542892 0.063382849 -2.09713459 4.68336105 -0.02801425
		 -1.83697259 4.68163776 -0.029780848 -1.39813268 4.52206326 -0.13139175 -1.39636016 4.61836147 -0.11821942
		 -1.39341927 4.46362209 -0.058065638 -1.40143311 4.50115013 0.036754273 -1.39943576 4.59925842 0.049947314
		 -1.60941577 4.68123245 -0.028230185 -1.39855087 4.65706968 -0.026646458 -3.032269239 4.54825163 -0.15667884
		 -3.031484604 4.65908575 -0.12412976 -3.033356905 4.46422243 -0.075866863 -3.03365922 4.49057436 0.034564484
		 -3.032853127 4.60222149 0.066312842 -3.031759501 4.68728256 -0.012560614;
	setAttr -s 491 ".ed";
	setAttr ".ed[0:165]"  1 0 1 1 2 1 2 3 1 4 3 1 0 4 1 3 5 1 4 6 1 6 5 1 5 7 1
		 6 8 1 8 7 1 7 9 1 8 10 1 10 9 1 9 11 1 10 12 1 12 11 1 11 13 1 14 13 1 12 14 1 13 15 1
		 16 15 1 17 16 1 14 17 1 18 2 1 15 18 1 13 3 1 11 5 1 17 19 1 19 0 1 14 4 1 12 6 1
		 21 20 1 21 22 1 22 23 1 24 23 1 20 24 1 23 25 1 24 26 1 26 25 1 25 27 1 28 27 1 26 28 1
		 27 29 1 30 29 1 28 30 1 29 31 1 32 31 1 30 32 1 31 33 1 34 33 1 32 34 1 33 35 1 34 36 1
		 36 35 1 35 37 1 38 37 1 36 38 1 37 39 1 40 39 1 41 40 1 38 41 1 42 22 1 39 42 1 37 23 1
		 35 25 1 33 27 1 41 43 1 43 20 1 38 24 1 36 26 1 34 28 1 45 44 1 45 46 1 46 47 1 48 47 1
		 44 48 1 47 49 1 50 49 1 48 50 1 49 51 1 50 52 1 52 51 1 51 53 1 54 53 1 52 54 1 53 55 1
		 56 55 1 54 56 1 55 57 1 56 58 1 58 57 1 57 59 1 60 59 1 58 60 1 59 61 1 62 61 1 60 62 1
		 61 63 1 64 63 1 65 64 1 62 65 1 66 46 1 63 66 1 61 47 1 59 49 1 57 51 1 65 67 1 44 67 1
		 62 48 1 60 50 1 58 52 1 68 69 1 69 70 1 71 70 1 68 71 1 70 72 1 71 73 1 73 72 1 72 74 1
		 75 74 1 73 75 1 74 76 1 77 76 1 75 77 1 76 78 1 79 78 1 77 79 1 78 80 1 81 80 1 79 81 1
		 80 82 1 81 83 1 83 82 1 82 84 1 85 84 1 83 85 1 84 86 1 87 86 1 85 87 1 88 69 1 88 86 1
		 84 70 1 82 72 1 80 74 1 87 89 1 89 68 1 85 71 1 83 73 1 81 75 1 90 91 1 91 92 1 93 92 1
		 90 93 1 92 94 1 94 95 1 93 95 1 96 97 1 97 98 1 98 99 1 96 99 1 100 101 1 101 102 1
		 102 103 1 100 103 1 105 104 1;
	setAttr ".ed[166:331]" 105 106 1 106 107 1 107 104 1 109 108 1 109 110 1 110 111 1
		 111 108 1 112 109 1 112 113 1 113 114 1 114 110 1 116 115 1 116 117 1 117 118 1 115 118 1
		 119 120 1 120 121 1 121 122 1 122 119 1 123 124 1 124 125 1 125 126 1 126 123 1 124 127 1
		 127 128 1 128 125 1 121 129 1 129 130 1 130 131 1 131 122 1 125 132 1 132 133 1 133 126 1
		 128 134 1 134 132 1 136 135 1 136 137 1 137 138 1 135 138 1 139 19 1 140 17 1 140 139 1
		 66 141 1 141 142 1 63 142 1 117 143 1 143 144 1 118 144 1 145 146 1 146 69 1 69 145 1
		 135 86 1 88 136 1 147 135 1 147 86 1 149 148 1 149 150 1 150 151 1 151 148 1 152 153 1
		 153 154 1 154 155 1 155 152 1 156 152 1 155 157 1 157 156 1 115 112 1 118 158 1 158 113 1
		 160 159 1 160 161 1 161 162 1 162 159 1 159 163 1 162 164 1 164 165 1 165 163 1 161 147 1
		 135 162 1 138 164 1 127 160 1 159 128 1 163 166 1 166 134 1 167 168 1 168 91 1 167 90 1
		 169 116 1 169 170 1 170 117 1 170 171 1 171 143 1 146 136 1 172 137 1 146 172 1 173 46 1
		 173 141 1 0 174 1 139 174 1 126 155 1 133 157 1 154 123 1 108 149 1 111 150 1 98 101 1
		 99 100 1 137 67 1 138 65 1 164 64 1 142 165 1 134 16 1 166 140 1 132 15 1 18 133 1
		 157 2 1 1 156 1 130 173 1 45 131 1 172 44 1 131 172 1 174 175 1 156 175 1 129 21 1
		 20 173 1 141 43 1 142 41 1 163 40 1 39 140 1 42 139 1 174 22 1 175 129 1 94 97 1
		 95 96 1 102 168 1 103 167 1 99 176 1 177 176 1 96 177 1 103 178 1 179 178 1 100 179 1
		 167 180 1 178 180 1 90 181 1 180 181 1 95 182 1 183 182 1 93 183 1 182 177 1 176 179 1
		 179 184 1 184 185 1 177 185 1 178 186 1 186 184 1 180 187 1 187 186 1 181 183 1 183 188 1
		 188 187 1 182 189 1 189 188 1 185 189 1 190 191 1 191 192 1 192 193 1;
	setAttr ".ed[332:490]" 190 193 1 191 194 1 194 195 1 195 192 1 194 196 1 196 197 1
		 197 195 1 196 198 1 198 199 1 199 197 1 198 200 1 200 201 1 201 199 1 200 190 1 193 201 1
		 202 203 1 203 204 1 204 205 1 202 205 1 203 206 1 206 207 1 207 204 1 206 208 1 208 209 1
		 209 207 1 208 210 1 210 211 1 211 209 1 210 212 1 212 213 1 213 211 1 212 202 1 205 213 1
		 214 215 1 215 216 1 216 217 1 214 217 1 215 218 1 218 219 1 219 216 1 218 220 1 220 221 1
		 221 219 1 220 222 1 222 223 1 223 221 1 222 224 1 224 225 1 225 223 1 224 214 1 217 225 1
		 226 227 1 227 228 1 226 229 1 227 230 1 230 231 1 230 232 1 232 233 1 232 234 1 234 235 1
		 234 236 1 236 237 1 237 235 1 236 226 1 229 237 1 229 228 1 228 238 1 239 238 1 229 239 1
		 228 231 1 231 240 1 238 240 1 231 233 1 233 241 1 233 235 1 235 242 1 235 243 1 243 244 1
		 242 244 1 243 229 1 244 239 1 238 241 1 239 241 1 240 241 1 242 241 1 244 241 1 91 116 1
		 92 115 1 112 94 1 97 109 1 108 98 1 101 149 1 148 105 1 105 102 1 168 169 1 104 169 1
		 122 146 1 145 119 1 107 170 1 152 121 1 120 153 1 151 106 1 170 145 1 171 69 1 119 107 1
		 106 120 1 153 151 1 150 154 1 123 111 1 110 124 1 114 127 1 113 160 1 158 161 1 118 147 1
		 144 86 1 216 227 1 217 226 1 219 230 1 221 232 1 223 234 1 225 236 1 204 245 1 245 246 1
		 205 246 1 207 247 1 247 245 1 209 248 1 248 247 1 211 249 1 249 248 1 213 250 1 250 249 1
		 246 250 1 192 203 1 193 202 1 195 206 1 197 208 1 199 210 1 201 212 1 144 87 1 68 171 1
		 143 89 1 245 215 1 246 214 1 247 218 1 248 220 1 249 222 1 250 224 1 237 243 1 184 191 1
		 185 190 1 186 194 1 187 196 1 188 198 1 189 200 1 181 188 1 181 187 1 176 184 1 176 185 1;
	setAttr -s 245 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.62757915 -1.59022737 0.06894663 -0.019389628
		 -1.70820844 0.095291056 0.35189107 -1.27566469 -1.084566474 -0.21734992 -1.61204803
		 -0.53055865 -0.21734992 -1.61204803 -0.53055865 -0.1420128 -1.13752949 1.27015412
		 0.36441588 -1.27122653 -1.085640907 -0.14201219 -1.13752937 1.27015424 0.36441681
		 -1.27122653 -1.085640669 -0.11222508 1.27104175 1.13986433 0.39420381 1.13734269
		 -1.2159307 -0.11222465 1.27104092 1.1398654 0.39420408 1.13734353 -1.21592975 0.0099380892
		 1.70830011 -0.095100768 0.3807463 1.12931097 -1.22764874 -0.7112003 1.51965427 -0.33507818
		 0.011224516 1.69132185 -0.25833458 0.206018 1.12225878 -1.2749604 -0.016824158 -0.10092475
		 -1.70791197 -1.6800307 -0.035591967 -0.32196656 -0.91285592 -1.44159043 0.12626779
		 -0.071521811 -1.70662451 0.098741621 -0.019389628 -1.70820844 0.095291056 -0.62757915
		 -1.59022737 0.06894663 -0.13509911 -1.70316029 0.091791026 0.13528787 -1.14071667
		 1.26802802 0.1049447 -1.27065551 -1.14098799 0.13528898 -1.14071655 1.26802802 0.10494586
		 -1.27065539 -1.14098799 -0.91065139 -0.95523953 1.088881969 -0.93641734 -1.065571189
		 -0.95661539 -0.88536632 1.089274526 0.97828406 -0.91113049 0.97894359 -1.06721282
		 0.1650677 1.26714158 1.13777733 0.13472457 1.13720429 -1.2712388 0.16506745 1.26714122
		 1.13777769 0.13472438 1.13720465 -1.27123857 -0.041933317 1.70865476 -0.078569062
		 0.0099380892 1.70830011 -0.095100768 -0.94397652 1.42559302 0.063446552 -0.18086316
		 1.69930792 -0.084105805 -0.7112003 1.51965427 -0.33507818 -1.6800307 -0.035591967
		 -0.32196656 -1.70091534 -0.011277916 0.18491118 0.11716522 -1.15765274 1.25441003
		 0.41463992 -1.15085435 1.19626093 -0.071521811 -1.70662451 0.098741621 -0.91285592
		 -1.44159043 0.12626779 0.11716522 -1.15765274 1.25441003 0.43596584 -1.14898741 1.19045973
		 -0.21739927 -1.26641583 -1.12976146 0.43596548 -1.1489861 1.19046104 -0.21739891
		 -1.26641655 -1.12976062 -0.61612546 -0.94668955 1.28514624 -1.16988266 -1.046217442
		 -0.68134862 -0.59087956 1.094682217 1.17471886 -1.14463544 0.99515468 -0.79177606
		 0.46575227 1.25958073 1.060171485 -0.18761215 1.14215076 -1.26004982 0.46575409 1.25957966
		 1.060171962 -0.18761095 1.14215136 -1.26004958 0.44246474 1.26209927 1.067128301
		 -0.041933317 1.70865476 -0.078569062 0.46174788 1.1413033 1.18812788 0.087259062
		 1.70673704 0.082866766 -0.94397652 1.42559302 0.063446552 -1.70091534 -0.011277916
		 0.18491118 0.11716522 -1.15765274 1.25441003 0.47450835 -1.11668205 1.20635629 0.9009589
		 -1.17646992 0.8553502 -0.775383 -1.24582326 -0.87985116 -1.0036799908 -1.3701781
		 0.20656937 0.91867542 -1.17485893 0.83855492 -0.80895543 -1.24806881 -0.84578228
		 0.92912501 -1.17548084 0.82607734 -0.82146323 -1.24749577 -0.83449674 0.077182405
		 -0.94669127 1.42311311 -1.39419127 -0.99134392 0.030005079 0.18383092 1.11162519
		 1.28760552 -1.34297311 1.050325155 -0.14377996 1.039533377 1.20997787 0.61867297
		 -0.70371735 1.16141284 -1.040833473 1.029833794 1.21169853 0.63139647 -0.69071651
		 1.15967727 -1.051423788 0.9996013 1.21200919 0.67768973 -0.66829163 1.16761005 -1.057121277
		 0.71294558 1.27515447 0.89057404 -0.50201291 1.61039841 0.28641263 -1.65614188 0.026577158
		 0.42885935 1.049166441 0.10363244 1.34756899 0.16480327 0.025511594 1.70282745 0.16466057
		 0.025537053 1.70284092 0.23147255 0.11067981 1.69162726 0.23173708 0.11150426 1.6915369
		 0.11140788 1.56839573 -0.67465228 0.099993348 1.57381463 -0.66373277 0.11317381 1.56869984
		 -0.67365044 0.19819641 -0.65323675 -1.56889522 0.26111037 -0.61315852 -1.57584596
		 0.1184898 1.5876596 -0.62668133 0.1985831 -0.65124375 -1.56967461 0.21855335 -1.69623721
		 0.049458884 0.21246718 -1.69740224 0.033401284 0.26112774 -0.6079573 -1.57785702
		 0.58775938 -1.58240855 0.27920347 0.045017246 -1.68063557 -0.31760043 0.098255247
		 -1.70370209 0.12319723 0.58777452 -1.5823108 0.27972451 0.58476937 0.042252246 -1.60738671
		 0.63395101 -0.11729991 -1.58485937 0.6181832 1.079610467 -1.17461622 0.51179528 1.18210018
		 -1.12611604 0.47565731 1.51472437 -0.63780296 0.53924525 1.61530209 -0.16566923 0.57871687
		 1.57620597 0.32877594 0.57990152 1.56428504 0.37968248 0.80230242 1.40279758 0.56205142
		 1.38372827 -0.10422979 1.00093197823 0.93659407 0.071922794 1.43005288 -0.79999793
		 -1.46223962 -0.38638225 -0.76316816 -1.51482475 -0.22430485 -0.78444713 -1.49376452
		 0.28415209 -0.74973202 -1.52471793 0.20141831 0.25627509 -0.1165776 -1.6876508 -0.084127501
		 -0.050265275 -1.70816517 0.26102608 1.054012537 -1.32225382 0.40007976 1.047168851
		 -1.29259658 0.24254365 1.56998599 -0.63541234 0.40309241 1.52215457 -0.66932356 -0.44042769
		 -1.65329397 0.0086514642 -0.33549905 -1.6777091 0.012843456 -0.45422602 -1.63929939
		 0.18387131 -0.31862473 -0.040760811 -1.68055034 0.11210803 1.093738556 -1.31095386
		 0.018084656 1.64310479 -0.47677246 0.13854311 1.18244421 1.22884655 0.13854311 1.18244421
		 1.22884655 -0.42257819 -0.4403452 1.598423 -0.42257819 -0.4403452 1.598423 -1.6800307
		 -0.035591967 -0.32196656 -0.7112003 1.51965427 -0.33507818 -0.94397652 1.42559302
		 0.063446552 -1.70091534 -0.011277916 0.18491118 0.5545035 1.34150803 0.90571219 1.055054426
		 0.011341983 1.34690905 -0.77706075 -1.52420676 0.020076059 -1.011845469 -1.24185801
		 0.60115701 0.20722201 1.62912488 0.4800455 0.71961069 -1.47070873 -0.49659714 0.20805827
		 -1.63804758 0.44826806 0.48301873 -1.4393754 -0.78887486 0.71953797 -1.469625 -0.49989966
		 -0.90420872 -1.36209691 0.50451058 -0.81380928 -1.21276498 -0.89126194 -0.19064283
		 -1.49345827 -0.81281596 -0.49838907 -1.50627375 0.64045292 -0.81495136 -1.49017513
		 0.20655419 -0.92974371 -1.093014598 -0.93184125 0.45959842 1.62653077 0.26570523
		 0.01167395 1.70820117 -0.09666799 0.13479635 1.67733026 0.3095569 0.32695296 1.63564014
		 0.38107169 0.38797596 1.66249824 -0.11404634 0.01167395 1.70820117 -0.09666799 0.13479635
		 1.67733026 0.3095569 0.13479635 1.67733026 0.3095569;
	setAttr ".n[166:244]" -type "float3"  -0.20018747 1.67622089 -0.27864131 0.16416734
		 0.023021165 1.70292437 0.23166227 0.10518136 1.69195211 0.43695134 -1.60213971 0.41189119
		 0.58778894 -1.58221745 0.28022256 0.15519746 -1.30403745 1.096737146 -0.42257819
		 -0.4403452 1.598423 -0.91285592 -1.44159043 0.12626779 -0.62757915 -1.59022737 0.06894663
		 -0.62757915 -1.59022737 0.06894663 0.07481961 -0.00092988386 -1.70933723 0.074470446
		 -0.0029969185 -1.70934999 0.075048447 -0.0012017745 -1.70932698 0.051475026 -1.53085482
		 0.76240826 0.055004433 -1.53028774 0.76329976 0.062751591 0.60935813 1.59755349 0.061920695
		 0.6121853 1.59650469 0.11696091 1.70692325 0.012865121 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 -0.027618326 -0.73735571 -1.54368913 -0.034023948 -0.58957386 -1.60582602
		 -0.034626625 -0.58788079 -1.60643375 -0.027448157 -0.73929429 -1.54276466 -0.034637827
		 -0.5872997 -1.60664606 -0.027467158 -0.74527216 -1.53988552 -0.022850692 -0.30957443
		 1.68257952 0.013320689 -0.14123686 1.70508265 -0.022613445 -0.30721864 1.68301451
		 0.014110324 -0.13128941 1.70587111 -0.010887758 1.68598247 0.29116482 0.018245298
		 1.70519817 0.13927987 -0.029902058 1.14717531 -1.26906538 -0.024476871 1.288643 -1.12527001
		 -0.05461457 -0.32247236 -1.67942286 -0.022071155 -0.52674937 -1.62772238 -0.075412646
		 -1.61325705 -0.56493086 -0.019783579 -1.67119706 -0.36625344 -0.061656259 -1.29125619
		 1.1208427 -0.028384157 -1.16533947 1.25244188 -0.02744461 0.33636156 1.67736101 -0.0339639
		 0.50761908 1.63358557 -0.010728892 1.62090933 0.54769552 -0.033061072 1.67150092
		 0.36390078 0.012246794 1.13433206 -1.28084862 0.031004222 1.027905107 -1.36743629
		 -0.0093753189 -0.71307594 -1.55527067 -0.033380382 -0.55923665 -1.61665475 -0.025250318
		 -1.70536804 -0.13606806 -0.052899245 -1.6804198 -0.31752685 -0.0021097697 -0.95093077
		 1.42237782 -0.018268729 -1.10896826 1.30280006 0.034454115 0.69257033 1.56415844
		 0.028983865 0.54100567 1.622931 0.052218575 1.69224572 0.24700235 0.040611763 1.67084038
		 0.36616305 0.029008647 1.13098419 -1.28353631 0.1340297 1.071940184 -1.32680547 0.099280514
		 -0.64203697 -1.58283424 -0.018732239 -0.58772236 -1.60675573 0.056262329 -1.6948694
		 -0.22734255 -0.056367997 -1.68682206 -0.28086755 0.046516482 -1.02666378 1.36792922
		 -0.054943603 -1.064185977 1.33862674 0.070706055 0.68751132 1.56517136 -0.01271184
		 0.59889489 1.6026839 1e+020 1e+020 1e+020 0.033110622 1.67365003 0.35388097 1.54234576
		 -0.27271831 -0.68864113 1.54234767 -0.27269515 -0.68864602 1.54233801 -0.27281967
		 -0.68861848 1.60970318 -0.061970975 0.57658261 1.6097461 -0.061628886 0.57649934
		 1.36173677 1.02377069 0.15810996 0.11268193 1.69054568 0.23830746;
	setAttr -s 242 -ch 982 ".fc[0:241]" -type "polyFaces" 
		f 5 4 3 -3 -2 0
		mu 0 5 0 1 2 3 4
		f 4 6 7 -6 -4
		mu 0 4 1 5 6 2
		f 4 9 10 -9 -8
		mu 0 4 5 7 8 6
		f 4 12 13 -12 -11
		mu 0 4 7 9 10 8
		f 4 15 16 -15 -14
		mu 0 4 9 11 12 10
		f 4 19 18 -18 -17
		mu 0 4 11 13 14 12
		f 5 23 22 21 -21 -19
		mu 0 5 13 15 16 17 14
		f 5 2 -27 20 25 24
		mu 0 5 3 2 18 19 20
		f 4 5 -28 17 26
		mu 0 4 2 6 21 18
		f 4 8 11 14 27
		mu 0 4 6 8 22 21
		f 5 -24 30 -5 -30 -29
		mu 0 5 23 24 1 0 25
		f 4 -20 31 -7 -31
		mu 0 4 24 26 5 1
		f 4 -16 -13 -10 -32
		mu 0 4 26 27 7 5
		f 5 36 35 -35 -34 32
		mu 0 5 28 29 30 31 32
		f 4 38 39 -38 -36
		mu 0 4 29 33 34 30
		f 4 42 41 -41 -40
		mu 0 4 33 35 36 34
		f 4 45 44 -44 -42
		mu 0 4 35 37 38 36
		f 4 48 47 -47 -45
		mu 0 4 37 39 40 38
		f 4 51 50 -50 -48
		mu 0 4 39 41 42 40
		f 4 53 54 -53 -51
		mu 0 4 41 43 44 42
		f 4 57 56 -56 -55
		mu 0 4 43 45 46 44
		f 5 61 60 59 -59 -57
		mu 0 5 45 47 48 49 46
		f 5 34 -65 58 63 62
		mu 0 5 31 30 50 51 52
		f 4 37 -66 55 64
		mu 0 4 30 34 53 50
		f 4 40 -67 52 65
		mu 0 4 34 36 54 53
		f 4 43 46 49 66
		mu 0 4 36 38 55 54
		f 5 -62 69 -37 -69 -68
		mu 0 5 56 57 29 28 58
		f 4 -58 70 -39 -70
		mu 0 4 57 59 33 29
		f 4 -54 71 -43 -71
		mu 0 4 59 60 35 33
		f 4 -52 -49 -46 -72
		mu 0 4 60 61 37 35
		f 5 76 75 -75 -74 72
		mu 0 5 62 63 64 65 66
		f 4 79 78 -78 -76
		mu 0 4 63 67 68 64
		f 4 81 82 -81 -79
		mu 0 4 67 69 70 68
		f 4 85 84 -84 -83
		mu 0 4 69 71 72 70
		f 4 88 87 -87 -85
		mu 0 4 71 73 74 72
		f 4 90 91 -90 -88
		mu 0 4 73 75 76 74
		f 4 94 93 -93 -92
		mu 0 4 75 77 78 76
		f 4 97 96 -96 -94
		mu 0 4 77 79 80 78
		f 5 101 100 99 -99 -97
		mu 0 5 79 81 82 83 80
		f 5 74 -105 98 103 102
		mu 0 5 65 64 84 85 86
		f 4 77 -106 95 104
		mu 0 4 64 68 87 84
		f 4 80 -107 92 105
		mu 0 4 68 70 88 87
		f 4 83 86 89 106
		mu 0 4 70 72 89 88
		f 5 -102 109 -77 108 -108
		mu 0 5 90 91 63 62 92
		f 4 -98 110 -80 -110
		mu 0 4 91 93 67 63
		f 4 -95 111 -82 -111
		mu 0 4 93 94 69 67
		f 4 -91 -89 -86 -112
		mu 0 4 94 95 71 69
		f 4 115 114 -114 -113
		mu 0 4 96 97 98 99
		f 4 117 118 -117 -115
		mu 0 4 97 100 101 98
		f 4 121 120 -120 -119
		mu 0 4 100 102 103 101
		f 4 124 123 -123 -121
		mu 0 4 102 104 105 103
		f 4 127 126 -126 -124
		mu 0 4 104 106 107 105
		f 4 130 129 -129 -127
		mu 0 4 106 108 109 107
		f 4 132 133 -132 -130
		mu 0 4 108 110 111 109
		f 4 136 135 -135 -134
		mu 0 4 110 112 113 111
		f 4 139 138 -138 -136
		mu 0 4 112 114 115 113
		f 5 113 -143 137 -142 140
		mu 0 5 99 98 116 117 118
		f 4 116 -144 134 142
		mu 0 4 98 101 119 116
		f 4 119 -145 131 143
		mu 0 4 101 103 120 119
		f 4 122 125 128 144
		mu 0 4 103 105 121 120
		f 5 -140 147 -116 -147 -146
		mu 0 5 122 123 97 96 124
		f 4 -137 148 -118 -148
		mu 0 4 123 125 100 97
		f 4 -133 149 -122 -149
		mu 0 4 125 126 102 100
		f 4 -131 -128 -125 -150
		mu 0 4 126 127 104 102
		f 4 153 152 -152 -151
		mu 0 4 128 129 130 131
		f 4 156 -156 -155 -153
		mu 0 4 129 132 133 130
		f 4 160 -160 -159 -158
		mu 0 4 134 135 136 137
		f 4 164 -164 -163 -162
		mu 0 4 138 139 140 141
		f 4 -169 -168 -167 165
		mu 0 4 142 143 144 145
		f 4 -173 -172 -171 169
		mu 0 4 146 147 148 149
		f 5 170 -177 -176 -175 173
		mu 0 5 149 148 150 151 152
		f 4 180 -180 -179 177
		mu 0 4 153 154 155 156
		f 4 -185 -184 -183 -182
		mu 0 4 157 158 159 160
		f 4 -189 -188 -187 -186
		mu 0 4 161 162 163 164
		f 4 186 -192 -191 -190
		mu 0 4 164 163 165 166
		f 5 -196 -195 -194 -193 183
		mu 0 5 158 167 168 169 159
		f 4 -199 -198 -197 187
		mu 0 4 162 170 171 163
		f 4 196 -201 -200 191
		mu 0 4 163 171 172 165
		f 4 204 -204 -203 201
		mu 0 4 173 174 175 176
		f 4 -208 206 28 -206
		mu 0 4 177 178 179 180
		f 4 -104 210 -210 -209
		mu 0 4 181 182 183 184
		f 4 213 -213 -212 179
		mu 0 4 154 185 186 155
		f 3 -217 -216 -215
		mu 0 3 187 188 189
		f 4 -219 141 -218 -202
		mu 0 4 176 190 191 173
		f 3 217 -221 219
		mu 0 3 173 191 192
		f 4 -225 -224 -223 221
		mu 0 4 193 194 195 196
		f 4 -229 -228 -227 -226
		mu 0 4 197 198 199 200
		f 4 -232 -231 228 -230
		mu 0 4 201 202 198 197
		f 5 174 -235 -234 -181 232
		mu 0 5 152 151 203 154 153
		f 4 -239 -238 -237 235
		mu 0 4 204 205 206 207
		f 5 -243 -242 -241 238 239
		mu 0 5 208 209 210 205 204
		f 4 -245 -220 -244 237
		mu 0 4 205 173 192 206
		f 4 -246 -205 244 240
		mu 0 4 210 174 173 205
		f 4 190 -248 -236 -247
		mu 0 4 166 165 204 207
		f 5 -250 -249 -240 247 199
		mu 0 5 172 211 208 204 165
		f 4 252 150 -252 -251
		mu 0 4 212 128 131 213
		f 4 -256 -255 253 178
		mu 0 4 155 214 215 156
		f 4 -258 -257 255 211
		mu 0 4 186 216 214 155
		f 4 215 -141 218 -259
		mu 0 4 217 218 190 176
		f 4 -261 258 202 -260
		mu 0 4 219 217 176 175
		f 4 -103 208 -263 261
		mu 0 4 220 181 184 221
		f 4 -265 205 29 263
		mu 0 4 222 177 180 223
		f 4 230 -267 198 265
		mu 0 4 224 225 170 162
		f 4 227 -266 188 -268
		mu 0 4 226 224 162 161
		f 4 222 -270 172 268
		mu 0 4 227 228 147 146
		f 4 271 161 -271 159
		mu 0 4 135 229 230 136
		f 4 273 107 -273 203
		mu 0 4 174 231 232 175
		f 4 -101 -274 245 274
		mu 0 4 233 231 174 210
		f 5 -211 -100 -275 241 -276
		mu 0 5 183 182 233 210 209
		f 5 -23 -207 -278 249 276
		mu 0 5 234 179 178 211 172
		f 4 278 -22 -277 200
		mu 0 4 171 235 234 172
		f 4 -280 -26 -279 197
		mu 0 4 170 236 235 171
		f 4 280 -25 279 266
		mu 0 4 225 237 236 170
		f 4 1 -281 231 -282
		mu 0 4 238 239 202 201
		f 5 -284 73 -262 -283 194
		mu 0 5 167 240 241 242 168
		f 4 -109 -285 259 272
		mu 0 4 232 243 219 175
		f 4 284 -73 283 285
		mu 0 4 244 245 240 167
		f 5 -264 -1 281 287 -287
		mu 0 5 246 247 238 201 248
		f 5 282 -290 -33 -289 193
		mu 0 5 168 242 249 250 169
		f 4 290 68 289 262
		mu 0 4 184 251 252 221
		f 4 291 67 -291 209
		mu 0 4 183 253 251 184
		f 5 -61 -292 275 242 292
		mu 0 5 254 253 183 209 208
		f 5 -294 -60 -293 248 277
		mu 0 5 178 255 254 208 211
		f 4 -64 293 207 -295
		mu 0 4 256 255 178 177
		f 4 -63 294 264 295
		mu 0 4 257 256 177 222
		f 5 33 -296 286 296 288
		mu 0 5 250 258 246 248 169
		f 4 298 157 -298 155
		mu 0 4 132 134 137 133
		f 4 300 250 -300 163
		mu 0 4 139 212 213 140
		f 4 303 302 -302 -161
		mu 0 4 259 260 261 262
		f 4 306 305 -305 -165
		mu 0 4 263 264 265 266
		f 4 304 308 -308 -301
		mu 0 4 266 265 267 268
		f 4 307 310 -310 -253
		mu 0 4 268 267 269 270
		f 4 313 312 -312 -157
		mu 0 4 271 272 273 274
		f 4 311 314 -304 -299
		mu 0 4 274 273 275 276
		f 3 489 -317 -316
		mu 0 3 261 278 264
		f 4 316 -321 -320 -306
		mu 0 4 264 278 279 265
		f 4 319 -323 -322 -309
		mu 0 4 265 279 280 267
		f 3 487 -325 -324
		mu 0 3 269 281 272
		f 4 324 -328 -327 -313
		mu 0 4 272 281 282 273
		f 4 326 -329 -319 -315
		mu 0 4 273 282 283 275
		f 4 332 -332 -331 -330
		mu 0 4 284 285 286 287
		f 4 330 -336 -335 -334
		mu 0 4 287 286 288 289
		f 4 334 -339 -338 -337
		mu 0 4 289 288 290 291
		f 4 337 -342 -341 -340
		mu 0 4 291 290 292 293
		f 4 340 -345 -344 -343
		mu 0 4 293 292 294 295
		f 4 343 -347 -333 -346
		mu 0 4 295 294 296 297
		f 4 350 -350 -349 -348
		mu 0 4 298 299 300 301
		f 4 348 -354 -353 -352
		mu 0 4 301 300 302 303
		f 4 352 -357 -356 -355
		mu 0 4 303 302 304 305
		f 4 355 -360 -359 -358
		mu 0 4 305 304 306 307
		f 4 358 -363 -362 -361
		mu 0 4 307 306 308 309
		f 4 361 -365 -351 -364
		mu 0 4 309 308 310 311
		f 4 368 -368 -367 -366
		mu 0 4 312 313 314 315
		f 4 366 -372 -371 -370
		mu 0 4 315 314 316 317
		f 4 370 -375 -374 -373
		mu 0 4 317 316 318 319
		f 4 373 -378 -377 -376
		mu 0 4 319 318 320 321
		f 4 376 -381 -380 -379
		mu 0 4 321 320 322 323
		f 4 379 -383 -369 -382
		mu 0 4 323 322 324 325
		f 4 385 397 -385 -384
		mu 0 4 326 327 328 329
		f 4 384 401 -388 -387
		mu 0 4 329 328 330 331
		f 4 387 404 -390 -389
		mu 0 4 331 330 332 333
		f 4 389 406 -392 -391
		mu 0 4 333 332 334 335
		f 4 391 -395 -394 -393
		mu 0 4 335 334 336 337
		f 4 393 -397 -386 -396
		mu 0 4 337 336 338 339
		f 4 400 399 -399 -398
		mu 0 4 327 340 341 328
		f 4 398 403 -403 -402
		mu 0 4 328 341 342 330
		f 4 402 415 -406 -405
		mu 0 4 330 342 343 332
		f 4 405 -417 -408 -407
		mu 0 4 332 343 344 334
		f 4 407 410 -410 -409
		mu 0 4 334 344 345 346
		f 4 409 412 -401 -412
		mu 0 4 346 345 347 338
		f 3 414 -414 -400
		mu 0 3 348 351 349
		f 3 413 -416 -404
		mu 0 3 349 351 350
		f 3 416 -418 -411
		mu 0 3 352 351 353
		f 3 417 -415 -413
		mu 0 3 353 351 348
		f 4 309 323 -314 -154
		mu 0 4 270 269 272 271
		f 4 301 315 -307 -272
		mu 0 4 262 261 264 263
		f 4 419 -178 -419 151
		mu 0 4 130 354 355 131
		f 4 -421 -233 -420 154
		mu 0 4 133 356 354 130
		f 4 -423 -170 -422 158
		mu 0 4 136 357 358 137
		f 5 -426 -425 -222 -424 162
		mu 0 5 140 359 360 361 141
		f 4 418 -254 -427 251
		mu 0 4 131 355 362 213
		f 4 423 -269 422 270
		mu 0 4 230 363 357 136
		f 4 421 -174 420 297
		mu 0 4 137 358 356 133
		f 5 426 -428 -166 425 299
		mu 0 5 213 362 364 359 140
		f 4 260 -286 195 428
		mu 0 4 189 244 167 158
		f 4 214 -429 184 -430
		mu 0 4 187 189 158 157
		f 4 254 -431 168 427
		mu 0 4 365 366 143 142
		f 5 -297 -288 229 431 192
		mu 0 5 169 248 201 197 159
		f 4 -432 225 -433 182
		mu 0 4 159 197 200 160
		f 4 166 -434 224 424
		mu 0 4 145 144 194 193
		f 4 256 435 216 -435
		mu 0 4 366 367 188 187
		f 4 434 429 436 430
		mu 0 4 366 187 157 143
		f 4 -437 181 -438 167
		mu 0 4 143 157 160 144
		f 4 438 433 437 432
		mu 0 4 200 194 144 160
		f 4 -440 223 -439 226
		mu 0 4 199 195 194 200
		f 4 439 267 440 269
		mu 0 4 228 226 161 147
		f 4 -441 185 -442 171
		mu 0 4 147 161 164 148
		f 4 441 189 -443 176
		mu 0 4 148 164 166 150
		f 4 442 246 -444 175
		mu 0 4 150 166 207 151
		f 4 -445 234 443 236
		mu 0 4 206 203 151 207
		f 4 -446 233 444 243
		mu 0 4 192 154 203 206
		f 4 -447 -214 445 220
		mu 0 4 191 185 154 192
		f 4 448 383 -448 367
		mu 0 4 313 326 329 314
		f 4 447 386 -450 371
		mu 0 4 314 329 331 316
		f 4 449 388 -451 374
		mu 0 4 316 331 333 318
		f 4 450 390 -452 377
		mu 0 4 318 333 335 320
		f 4 451 392 -453 380
		mu 0 4 320 335 337 322
		f 4 452 395 -449 382
		mu 0 4 322 337 339 324
		f 4 455 -455 -454 349
		mu 0 4 299 368 369 300
		f 4 453 -458 -457 353
		mu 0 4 300 369 370 302
		f 4 456 -460 -459 356
		mu 0 4 302 370 371 304
		f 4 458 -462 -461 359
		mu 0 4 304 371 372 306
		f 4 460 -464 -463 362
		mu 0 4 306 372 373 308
		f 4 462 -465 -456 364
		mu 0 4 308 373 374 310
		f 4 466 347 -466 331
		mu 0 4 285 298 301 286
		f 4 465 351 -468 335
		mu 0 4 286 301 303 288
		f 4 467 354 -469 338
		mu 0 4 288 303 305 290
		f 4 468 357 -470 341
		mu 0 4 290 305 307 292
		f 4 469 360 -471 344
		mu 0 4 292 307 309 294
		f 4 470 363 -467 346
		mu 0 4 294 309 311 296
		f 3 -139 -472 446
		mu 0 3 375 376 377
		f 3 -436 -473 112
		mu 0 3 378 379 380
		f 4 -474 212 471 145
		mu 0 4 381 382 383 384
		f 4 473 146 472 257
		mu 0 4 385 386 387 388
		f 4 475 365 -475 454
		mu 0 4 368 312 315 369
		f 4 474 369 -477 457
		mu 0 4 369 315 317 370
		f 4 476 372 -478 459
		mu 0 4 370 317 319 371
		f 4 477 375 -479 461
		mu 0 4 371 319 321 372
		f 4 478 378 -480 463
		mu 0 4 372 321 323 373
		f 4 479 381 -476 464
		mu 0 4 373 323 325 374
		f 3 408 -481 394
		mu 0 3 334 346 336
		f 3 480 411 396
		mu 0 3 336 346 338
		f 4 482 329 -482 317
		mu 0 4 277 284 287 278
		f 4 481 333 -484 320
		mu 0 4 278 287 289 279
		f 4 483 336 -485 322
		mu 0 4 279 289 291 280
		f 4 484 339 -486 325
		mu 0 4 280 291 293 281
		f 4 485 342 -487 327
		mu 0 4 281 293 295 282
		f 4 486 345 -483 328
		mu 0 4 282 295 297 283
		f 3 488 -326 -488
		mu 0 3 269 280 281
		f 3 321 -489 -311
		mu 0 3 267 280 269
		f 3 490 -318 -490
		mu 0 3 261 277 278
		f 3 318 -491 -303
		mu 0 3 260 277 261;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "lf_arm_render_mesh";
	setAttr ".t" -type "double3" 6.2377231206541666 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 3.6341110064525282 1.4613276029757714 0 ;
	setAttr ".rpt" -type "double3" -7.2682220129050563 0 -4.4505024117982546e-016 ;
	setAttr ".sp" -type "double3" 3.6341110064525282 1.4613276029757714 0 ;
createNode mesh -n "lf_arm_render_meshShape" -p "lf_arm_render_mesh";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:241]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 389 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.375 0.050000001 0.625
		 0.050000001 0.625 0 0.50628895 0 0.375 0.125 0.625 0.125 0.375 0.22499999 0.625 0.22499999
		 0.375 0.52499998 0.625 0.52499998 0.375 0.625 0.625 0.625 0.375 0.70000005 0.625
		 0.70000005 0.375 0.75000006 0.50722021 0.75000006 0.625 0.75000006 0.875 0.050000001
		 0.875 0 0.73122257 0 0.875 0.125 0.875 0.22499999 0.125 0 0.125 0.050000001 0.27573818
		 0 0.125 0.125 0.125 0.22499999 0.375 0 0.375 0.050000001 0.625 0.050000001 0.625
		 0 0.5 0 0.375 0.125 0.625 0.125 0.375 0.2 0.625 0.2 0.375 0.25 0.625 0.25 0.375 0.5
		 0.625 0.5 0.375 0.55000001 0.625 0.55000001 0.375 0.625 0.625 0.625 0.375 0.70000005
		 0.625 0.70000005 0.375 0.75000006 0.5 0.75000006 0.625 0.75000006 0.875 0.050000001
		 0.875 0 0.75 0 0.875 0.125 0.875 0.2 0.875 0.25 0.125 0 0.125 0.050000001 0.26677647
		 0 0.125 0.125 0.125 0.2 0.125 0.25 0.375 0 0.375 0.050000001 0.625 0.050000001 0.625
		 0 0.49041998 0 0.375 0.1 0.625 0.1 0.375 0.17500001 0.625 0.17500001 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.375 0.57500005 0.625 0.57500005 0.375 0.65000004 0.625
		 0.65000004 0.375 0.70000005 0.625 0.70000005 0.375 0.75000006 0.5 0.75000006 0.625
		 0.75000006 0.875 0.050000001 0.875 0 0.74331951 0 0.875 0.1 0.875 0.17500001 0.875
		 0.25 0.125 0 0.125 0.050000001 0.29664305 0 0.125 0.1 0.125 0.17500001 0.125 0.25
		 0.375 0 0.375 0.050000001 0.625 0.050000001 0.625 0 0.375 0.125 0.625 0.125 0.375
		 0.2 0.625 0.2 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.55000001 0.625 0.55000001
		 0.375 0.625 0.625 0.625 0.375 0.70000005 0.625 0.70000005 0.375 0.75000006 0.625
		 0.75000006 0.875 0.050000001 0.875 0 0.74354458 0 0.875 0.125 0.875 0.2 0.875 0.25
		 0.125 0 0.125 0.050000001 0.23963675 0 0.125 0.125 0.125 0.2 0.125 0.25 0.36059317
		 0.72692025 0.37100223 0.74742889 0.39588165 0.73893654 0.38816929 0.71320182 0.37528285
		 0.76494533 0.40438232 0.75947905 0.38071468 0.78717244 0.38169271 0.80874747 0.41037965
		 0.81056368 0.40922859 0.78516716 0.3251631 0.67820102 0.33943748 0.69456065 0.3630386
		 0.67421579 0.34405237 0.65253866 0.61775577 0.12923858 0.67677844 0.15355021 0.68219018
		 0.13172092 0.6190415 0.11841282 0.54031515 0.39014691 0.55849415 0.31373188 0.50364608
		 0.32232016 0.50831491 0.3907491 0.47562328 0.33913413 0.4349291 0.3651185 0.48515984
		 0.41301519 0.46532199 0.43429735 0.3873997 0.44668078 0.4137637 0.50325447 0.47748455
		 0.46363869 0.73042965 0.17016476 0.78408086 0.18677932 0.77415091 0.1399467 0.73271263
		 0.13624009 0.5328536 0.26895195 0.51285976 0.23403361 0.47562391 0.23905927 0.48827285
		 0.27664247 0.42355034 0.25617278 0.44657677 0.29285792 0.81644964 0.20996983 0.82362044
		 0.18135452 0.8337965 0.1407465 0.50280172 0.18807481 0.45831412 0.18806046 0.41716108
		 0.20032874 0.1935778 0.36523303 0.18632609 0.33800077 0.12928949 0.35625699 0.13456242
		 0.3781569 0.35595208 0.10147159 0.35577801 0.15395293 0.36330873 0.1528489 0.36190748
		 0.099477582 0.18465406 0.16780254 0.21899819 0.2161347 0.22783595 0.20924634 0.19487488
		 0.16155154 0.33371416 0.47623658 0.36089078 0.5235635 0.72997439 0.21544471 0.78078341
		 0.24710023 0.79401088 0.23361196 0.14270273 0.40622315 0.20609196 0.40123489 0.26936105
		 0.39707863 0.61875272 0.10352011 0.68478763 0.086399756 0.68789631 0.032158282 0.61840832
		 0.085757867 0.77844483 0.085231379 0.78213286 0.038236868 0.73501456 0.035197575
		 0.73161626 0.085815564 0.82328409 0.07707835 0.81787252 0.04430351 0.41234222 0.38816234
		 0.36519986 0.27530065 0.28844643 0.31402907 0.35449901 0.35355175 0.40006447 0.32020956
		 0.31444877 0.21597785 0.27350247 0.25539348 0.24230427 0.28542536 0.36580491 0.20815329
		 0.35074884 0.7075243 0.37759444 0.68968832 0.43869734 0.55675876 0.48898724 0.49138811
		 0.38659295 0.56832272 0.078748904 0.39037958 0.082752645 0.41094077 0.075601161 0.37450016
		 0.15217325 0.12209263 0.16199887 0.11773854 0.35449955 0.052855827 0.36058226 0.049001895
		 0.54807538 0.22928061 0.54517895 0.19367447 0.57922089 0.26744509 0.57057923 0.38957739
		 0.6103664 0.30560955 0.38261762 0.82915193 0.41151786 0.83494413 0.1809009 0.31762761
		 0.12564975 0.34114009 0.21578185 0.26898402 0.41458577 0.17781954 0.4527261 0.17159687
		 0.4993912 0.17249089 0.5435245 0.17333642 0.84610701 0.074311972 0.83828688 0.047768749
		 0.83973551 0.20281622 0.85108149 0.18186235 0.85039806 0.17100534 0.073396228 0.36337689
		 0.81003493 0.2355679 0.8212595 0.23693798 0.85646522 0.11395361 0.85573506 0.1069918
		 0.82740027 0.10200793 0.85006344 0.16568765;
	setAttr ".uvst[0].uvsp[250:388]" 0.84918547 0.14095286 0.19972865 0.15858299
		 0.16681141 0.11560594 0.23453426 0.20402551 0.29424778 0.1923649 0.34699035 0.15524121
		 0.34897882 0.10380639 0.35085943 0.055162154 0.85690218 0.11811981 0.375 0.3125 0.375
		 0.36620569 0.39442107 0.36620569 0.39792413 0.3125 0.41666666 0.3125 0.41666666 0.36620569
		 0.45833331 0.36620569 0.45833331 0.3125 0.49999997 0.36620569 0.49999997 0.3125 0.52083331
		 0.36620569 0.51825422 0.3125 0.54166663 0.3125 0.54166663 0.36620569 0.58333331 0.36620569
		 0.58333331 0.3125 0.625 0.36620569 0.625 0.3125 0.375 0.38972554 0.41666663 0.39046028
		 0.45833331 0.39157635 0.49999994 0.39098358 0.54166663 0.39250797 0.58333331 0.39037576
		 0.625 0.38972554 0.375 0.41991138 0.375 0.44281113 0.41666663 0.44291943 0.41666666
		 0.41991138 0.45833331 0.44326261 0.45833331 0.41991138 0.49999997 0.44323012 0.49999997
		 0.41991138 0.54166663 0.44448757 0.54166663 0.41991138 0.58333331 0.44369286 0.58333331
		 0.41991138 0.625 0.44281113 0.625 0.41991138 0.375 0.47361708 0.375 0.49651223 0.41666666
		 0.49658501 0.41666666 0.47361708 0.45833331 0.49690542 0.45833331 0.47361708 0.49999997
		 0.49696594 0.49999997 0.47361708 0.54166663 0.49715403 0.54166663 0.47361708 0.58333331
		 0.49666119 0.58333331 0.47361708 0.625 0.49651223 0.625 0.47361708 0.375 0.52732277
		 0.375 0.55222708 0.41666666 0.55215847 0.41666666 0.52732277 0.45833331 0.55282354
		 0.45833331 0.52732277 0.49999994 0.5528388 0.49999997 0.52732277 0.54166663 0.55241477
		 0.54166663 0.52732277 0.58333331 0.55224675 0.58333331 0.52732277 0.625 0.55222708
		 0.625 0.52732277 0.375 0.58102846 0.375 0.6208275 0.41666666 0.62069875 0.41666666
		 0.58102846 0.45833331 0.62065214 0.45833331 0.58102846 0.49999994 0.6205169 0.49999997
		 0.58102846 0.54166663 0.62044227 0.54166663 0.58102846 0.58333325 0.60664356 0.58333331
		 0.58102846 0.625 0.6208275 0.625 0.58102846 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.58333331 0.63473415 0.625 0.68843985 0.578125 0.97906649 0.42187497 0.97906649
		 0.34374997 0.84375 0.4609375 0.77296674 0.57812506 0.70843351 0.65625 0.84375 0.42364362
		 0.72946024 0.41011393 0.70228493 0.42909649 0.75483644 0.43533903 0.81214398 0.43660685
		 0.78324175 0.38143018 0.65836179 0.37112683 0.64654487 0.35883826 0.63245106 0.3973183
		 0.67658401 0.43414 0.83947814 0.38937426 0.6674729 0.6164701 0.14006431 0.66593784
		 0.19727747 0.68274927 0.2462723 0.375 0.51051968 0.41666666 0.51066577 0.45833331
		 0.51117516 0.49999994 0.51084495 0.54166663 0.51063681 0.58333331 0.51041722 0.625
		 0.51051968 0.030856486 0.038916681 0.79695678 0.22328231 1 0 0.018813487 0.030794682
		 1 0.60463864 0.99416721 0 0.16494563 0 0 0.96420395 1 0.65900213 0.79582536 0 0 0
		 0.23210688 0.87693769 0.80447888 0.62512839 1 4.175872e-015;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 251 ".pt";
	setAttr ".pt[0:165]" -type "float3"  7.7184949 -0.45851636 0.060071904 7.7083135 
		-0.43712041 0.10659673 7.6943574 -0.43499392 0.15276004 7.7719665 -0.44604144 0.16763625 
		7.792532 -0.45260316 0.0719698 7.9223676 -0.43666783 0.20728312 7.9383488 -0.44452068 
		0.095394589 8.0578747 -0.42960778 0.24304701 8.0845709 -0.43842101 0.11886529 8.0560465 
		-0.58058602 0.2510466 8.0827322 -0.58691251 0.12689531 7.8834066 -0.56660599 0.20433426 
		7.8622112 -0.57320315 0.090020753 7.7705574 -0.55954236 0.17380017 7.7911229 -0.56841087 
		0.07813371 7.6903887 -0.55083466 0.16087499 7.7040973 -0.55792344 0.11222507 7.7157583 
		-0.56231278 0.065875724 7.6863728 -0.4929018 0.16018 7.7169881 -0.50240839 0.061658751 
		7.7310729 -0.46684077 -0.042420596 7.7280936 -0.46066821 0.0014642695 7.7222285 -0.45956257 
		0.044852275 7.8074145 -0.45496741 0.049846068 7.8061881 -0.4629007 -0.047490805 7.9587669 
		-0.44738305 0.055371668 7.9225945 -0.45684996 -0.055269059 8.0292082 -0.44457754 
		0.057931691 8.0276947 -0.45088524 -0.06228641 8.1031399 -0.44254023 0.060626887 8.1015301 
		-0.44831511 -0.067218281 8.1012993 -0.59107041 0.0686801 8.0996885 -0.59758157 -0.059165079 
		8.0274773 -0.58546293 0.065504447 8.0259628 -0.59225547 -0.054713659 7.8802719 -0.57626134 
		0.059172027 7.8823147 -0.58454251 -0.04604011 7.8060126 -0.57056367 0.055977497 7.8047867 
		-0.57848567 -0.041359399 7.7222962 -0.56560832 0.05234294 7.7289367 -0.57017535 0.0075522955 
		7.7294765 -0.5714829 -0.035391554 7.7212882 -0.51127511 0.047954958 7.7300858 -0.51245666 
		-0.041016582 7.6987004 -0.47221187 -0.15239859 7.7107282 -0.46867537 -0.11385821 
		7.7255039 -0.46617997 -0.065341584 7.7991085 -0.46532458 -0.081290707 7.7725768 -0.47251007 
		-0.17551039 7.8712254 -0.46245962 -0.09792868 7.8427181 -0.46923137 -0.19916297 7.9948182 
		-0.45509085 -0.12642717 7.9536805 -0.46061292 -0.23653485 8.087575 -0.45061737 -0.1478426 
		8.0531425 -0.45383483 -0.27012068 8.0857468 -0.59956598 -0.13984329 8.0513134 -0.60314327 
		-0.26212138 8.0132265 -0.59474951 -0.12355095 7.9806762 -0.59764457 -0.23872864 7.8697109 
		-0.58728921 -0.091306023 7.8412042 -0.59177637 -0.1925403 7.7976995 -0.5811618 -0.075126939 
		7.7711678 -0.58647263 -0.16934663 7.725039 -0.5721643 -0.057862669 7.7092404 -0.58103895 
		-0.10348684 7.6984916 -0.57806975 -0.1463301 7.7253008 -0.51388073 -0.060749687 7.6984668 
		-0.50708914 -0.15007348 7.4745979 -0.3989417 -0.23980021 7.5644708 -0.41183808 -0.17726664 
		7.6156511 -0.41193897 -0.22991526 7.5349145 -0.41332707 -0.29154009 7.6870995 -0.41393301 
		-0.29124963 7.6113968 -0.41626498 -0.37022692 7.7504382 -0.41429266 -0.34951684 7.6644869 
		-0.41843563 -0.4320991 7.7933764 -0.41387832 -0.39030457 7.7030497 -0.41928488 -0.47838822 
		7.7915406 -0.56075937 -0.38227412 7.7012415 -0.56482309 -0.47047952 7.7487059 -0.55275828 
		-0.3419393 7.6627827 -0.55536032 -0.42464322 7.6844678 -0.54041672 -0.28338116 7.6038442 
		-0.54053265 -0.35662302 7.611032 -0.52528518 -0.22251169 7.5335317 -0.52453727 -0.28554916 
		7.564043 -0.51725292 -0.17408657 7.4724641 -0.5127309 -0.23339419 7.5796356 -0.46124858 
		-0.18120161 7.4730425 -0.46699181 -0.23584463 6.9595318 -0.44041553 0.014916755 7.0310192 
		-0.44262162 0.0060165189 7.0269299 -0.45465526 0.009823069 6.9653826 -0.4464069 0.015576445 
		7.0287766 -0.45617968 0.020487402 6.9617081 -0.44715482 0.02124943 6.9628124 -0.44567218 
		0.026914872 7.0330911 -0.45501465 0.032346111 7.0347357 -0.44152886 0.035415024 6.9625101 
		-0.43991742 0.027994033 6.9602618 -0.43501741 0.026554644 7.0370426 -0.42862579 0.035218928 
		7.0347052 -0.42901233 0.018773058 6.9594932 -0.43434942 0.021125976 7.099545 -0.42418191 
		0.006623311 7.1021771 -0.423585 0.016151952 7.2803407 -0.38377237 -0.00047639199 
		7.2948737 -0.37431371 -0.029547419 7.108645 -0.44156802 0.043145079 7.1142044 -0.46509987 
		0.039550737 7.26441 -0.48246771 0.069523513 7.2569494 -0.41942507 0.086926021 7.0985274 
		-0.46442002 0.019287109 7.2666821 -0.5152598 0.013807144 7.2527323 -0.49547875 0.04260904 
		7.1047578 -0.46531588 0.0059134979 7.0870147 -0.44431239 0.00029141456 7.1987357 
		-0.43636084 -0.088252343 7.2526402 -0.50175387 -0.076296084 7.4760823 -0.38755643 
		-0.046295926 7.428812 -0.40634537 -0.00014696363 7.5488205 -0.43965241 -0.00029012049 
		7.5738473 -0.44171405 -0.06373664 7.4392695 -0.4308221 0.13584583 7.4231558 -0.50415868 
		0.10833164 7.5497837 -0.51979524 0.12683569 7.5523992 -0.44111386 0.15121387 7.4316421 
		-0.53094113 0.077034362 7.5578365 -0.5576902 0.083868034 7.6377282 -0.44570795 -0.0023522556 
		7.6727386 -0.46454462 -0.057920843 7.6625619 -0.44956395 -0.10271872 7.6263094 -0.53750098 
		0.13522948 7.6314082 -0.47746727 0.15598807 7.6455703 -0.56746155 0.091885507 7.5806193 
		-0.54652506 -0.1186529 7.6089015 -0.48225793 -0.14508033 7.6343484 -0.4870621 -0.14160657 
		7.6153073 -0.55112755 -0.12229846 7.7160993 -0.50057393 0.05345859 7.7156601 -0.56724381 
		0.057153933 7.7206392 -0.51173502 -0.050471794 7.721344 -0.5671255 -0.047000304 7.365169 
		-0.45167503 -0.18660292 7.4194775 -0.52205241 -0.18505903 7.4792032 -0.39056119 -0.11508058 
		7.596025 -0.43114823 -0.12994729 7.4529953 -0.53052723 -0.10785453 7.1028342 -0.42255253 
		0.02909234 7.1118326 -0.42033467 0.044536203 7.3129892 -0.35226268 0.06382367 7.2872224 
		-0.36328611 0.028792428 7.5788031 -0.38173437 0.064279832 7.4440675 -0.36112607 0.052212466 
		7.4534001 -0.35764453 0.1029648 7.5796728 -0.37669152 0.12448818 7.6642189 -0.43145314 
		0.096635751 7.6263747 -0.40455836 0.13777263 7.2776427 -0.51254201 -0.021696027 7.5812054 
		-0.58099616 0.018456439 7.42945 -0.550524 0.015601584 7.4411907 -0.54516858 -0.044473603 
		7.6150856 -0.57748049 -0.070380352 7.6269488 -0.585509 0.0081465067 7.6424017 -0.5801248 
		-0.091763049 7.6472197 -0.58010727 -0.048834082;
	setAttr ".pt[166:250]" 7.6481957 -0.56873322 0.042726453 6.9566889 -0.43562829 
		0.01661035 7.0295534 -0.42987514 0.0067622513 7.0841579 -0.42472851 -0.0011112429 
		7.3121581 -0.36235094 -0.08862453 7.4223742 -0.378921 -0.19834517 7.6250634 -0.45199737 
		-0.13029909 7.722446 -0.46783704 -0.052481808 7.7175293 -0.45841175 0.050431892 7.6774659 
		-0.45609716 0.055823613 6.9057221 -0.43724209 0.022080891 6.902308 -0.43679246 0.021822024 
		6.9036484 -0.43734264 0.02212215 6.9027791 -0.43727687 0.021792725 6.9028602 -0.43725684 
		0.022331689 6.902833 -0.43710026 0.022365071 6.901978 -0.43669492 0.022135006 6.9084182 
		-0.43795383 0.021525484 6.8446999 -0.43788224 0.01503662 6.8452048 -0.42726487 0.015337802 
		6.8439069 -0.44174328 0.023039315 6.8435335 -0.43783745 0.03089007 6.8440075 -0.42752671 
		0.031109519 6.8447614 -0.42428458 0.0231997 6.7837329 -0.41340429 0.0042754635 6.7849531 
		-0.43676016 0.0027251169 6.7415533 -0.43484294 -0.013270281 6.7403212 -0.39556095 
		-0.0067276135 6.7863798 -0.44963574 0.022414321 6.7411227 -0.46107334 0.018179262 
		6.7844009 -0.43926793 0.042768784 6.7398891 -0.44709927 0.056313973 6.7862315 -0.41743609 
		0.044384234 6.7389164 -0.40732566 0.064387813 6.7848554 -0.4048906 0.025686251 6.738975 
		-0.38169903 0.03213739 6.701622 -0.38103655 -0.019839458 6.7030683 -0.44132626 -0.032913178 
		6.6541195 -0.44529033 -0.057233125 6.6528149 -0.36228973 -0.028504081 6.7017479 -0.48320699 
		0.013400931 6.6537852 -0.51173478 0.0016570687 6.7010851 -0.46366662 0.07388664 6.6520901 
		-0.49626768 0.089489549 6.7013783 -0.40381271 0.087710224 6.6512232 -0.41130063 0.11915579 
		6.7004652 -0.36173162 0.040672909 6.6511288 -0.34412658 0.058922261 6.466383 -0.3365941 
		-0.07658042 6.4670911 -0.47698441 -0.1029503 6.2924356 -0.49186549 -0.10637714 6.2939754 
		-0.33833897 -0.095404983 6.4723878 -0.57111764 0.0046697147 6.2917485 -0.58137321 
		0.013301721 6.4697161 -0.52416217 0.13331501 6.2887235 -0.51219016 0.13869448 6.4653559 
		-0.38543704 0.15744764 6.2873654 -0.37115484 0.15102312 6.4648895 -0.29035452 0.055580787 
		6.2898884 -0.28363299 0.042039752 6.1301293 -0.33418885 -0.089097038 6.1293082 -0.48705435 
		-0.11663605 5.9105201 -0.49395233 -0.10837212 5.9106688 -0.34925959 -0.085797846 
		6.1293502 -0.58492529 0.0016496666 5.9124665 -0.58653772 0.010920167 6.1276274 -0.53096175 
		0.14343774 5.8533278 -0.5287202 0.14979088 6.1233578 -0.3822535 0.16081145 5.913969 
		-0.37954384 0.16679874 6.124764 -0.28956896 0.054540917 5.9754138 -0.29453984 0.051690787 
		5.7588797 -0.48974943 -0.06550163 5.7579513 -0.38194054 -0.050754726 5.7569427 -0.55493957 
		0.016600663 5.7600064 -0.51333749 0.12297535 5.7589588 -0.40324903 0.13777941 5.8548245 
		-0.30166006 0.052187949 5.7584944 -0.3383784 0.051832743 6.5803895 -0.45808944 -0.082106784 
		6.5800076 -0.34653783 -0.049346931 6.5809193 -0.54266274 -0.00077161193 6.5803022 
		-0.51593781 0.11014798 6.5792556 -0.40393043 0.1417543 6.5787244 -0.31872723 0.062749356;
	setAttr -s 251 ".vt";
	setAttr ".vt[0:165]"  -5.93111467 4.62014484 -0.1445643 -5.90661287 4.56865501 -0.25652727
		 -5.88034439 4.56351376 -0.36901084 -6.05979538 4.59012365 -0.40342015 -6.10928679 4.60591459 -0.17319684
		 -6.42173862 4.56756592 -0.49883121 -6.46019793 4.58646393 -0.22956908 -6.7478404 4.55057573 -0.58489776
		 -6.81208467 4.57178497 -0.28605181 -6.7434392 4.913908 -0.60414892 -6.8076601 4.92913294 -0.30537623
		 -6.32797909 4.88026476 -0.49173468 -6.27697134 4.89614105 -0.21663684 -6.056404114 4.86326599 -0.41825375
		 -6.10589552 4.88460827 -0.18803041 -5.87077522 4.84351969 -0.38862598 -5.90216351 4.86036253 -0.27081335
		 -5.92452908 4.86993313 -0.15853131 -5.86109161 4.70348644 -0.38694605 -5.92748928 4.7257719 -0.14838308
		 -5.96138477 4.64017773 0.10208606 -5.95421505 4.6253233 -0.0035237954 -5.94010019 4.62266254 -0.10793795
		 -6.14510155 4.61160421 -0.11995561 -6.1421504 4.63069582 0.11428762 -6.50933504 4.59335232 -0.13325308
		 -6.42228556 4.61613464 0.13300616 -6.67885399 4.58660078 -0.13941383 -6.67521 4.60178041 0.14989355
		 -6.85677195 4.58169794 -0.14589988 -6.85289669 4.59559536 0.16176221 -6.85234118 4.93913889 -0.1652801
		 -6.84846592 4.95480824 0.14238201 -6.67468739 4.9256444 -0.15763782 -6.6710434 4.94199085 0.13166957
		 -6.32043505 4.90350056 -0.14239873 -6.32535028 4.92342949 0.11079649 -6.14172792 4.8897891 -0.13471103
		 -6.13877773 4.90885353 0.099532261 -5.94026327 4.87786388 -0.12596439 -5.95624352 4.8888545 -0.018174758
		 -5.9575429 4.89200115 0.085170522 -5.9378376 4.74710989 -0.11540461 -5.95900869 4.74995327 0.098707266
		 -5.8834796 4.65310335 0.36675039 -5.91242456 4.64459276 0.27400216 -5.94798183 4.63858747 0.15724589
		 -6.12511349 4.63652897 0.19562779 -6.061264515 4.65382099 0.42236945 -6.29866409 4.62963438 0.23566742
		 -6.23006058 4.64593077 0.47928989 -6.59609318 4.61190128 0.30424964 -6.49709415 4.62519026 0.56922609
		 -6.81931496 4.60113573 0.35578632 -6.73645067 4.60887861 0.65005112 -6.81491375 4.95958376 0.33653581
		 -6.73204947 4.96819258 0.6308006 -6.64039326 4.9479928 0.29732797 -6.56205988 4.95495987 0.57450551
		 -6.2950201 4.93003941 0.21972987 -6.22641706 4.94083786 0.46335229 -6.12172222 4.91529369 0.18079455
		 -6.057873249 4.92807436 0.40753624 -5.94686365 4.893641 0.13924773 -5.90884399 4.91499805 0.24904327
		 -5.88297701 4.90785265 0.35214648 -5.94749403 4.7533803 0.1461954 -5.8829174 4.73703623 0.361155
		 -5.41799021 4.4717207 0.61165392 -5.60417509 4.50600052 0.44081107 -5.6905694 4.50778627 0.55597764
		 -5.51532269 4.51037407 0.71499628 -5.85556173 4.5128541 0.70089835 -5.67338133 4.518466 0.89095885
		 -6.0079874992 4.51371956 0.84111965 -5.80114412 4.52368975 1.039855599 -6.11131954 4.51272249 0.93927616
		 -5.89394522 4.52573347 1.15125132 -6.10690165 4.86619473 0.91995072 -5.88959408 4.87597418 1.13221884
		 -6.0038180351 4.84694004 0.82288414 -5.79704189 4.85320187 1.021912813 -5.84922791 4.81723976 0.68196273
		 -5.65520525 4.81751871 0.85822082 -5.68714762 4.78281689 0.54101169 -5.51196814 4.7827549 0.70032305
		 -5.60835934 4.76790857 0.43466765 -5.41446972 4.76082659 0.59623557 -5.61128139 4.62726307 0.44066373
		 -5.41589403 4.64456558 0.6024642 -4.67050743 4.61598969 0.053287171 -4.81126595 4.60831642 0.064533398
		 -4.80318499 4.69944715 0.038777746 -4.6823287 4.69237185 0.034573399 -4.80736208 4.70978165 -0.041251242
		 -4.67512226 4.71106815 -0.041130759 -4.67852688 4.6898036 -0.12239156 -4.81592226 4.6979785 -0.12764601
		 -4.81959105 4.59984398 -0.14928344 -4.67803335 4.60752964 -0.13846628 -4.67275953 4.53586388 -0.11945899
		 -4.82163525 4.50832748 -0.1455051 -4.81949949 4.50956345 -0.029246144 -4.67143965 4.52517605 -0.038621906
		 -4.93128729 4.50029993 0.028114224 -4.93726301 4.49752617 -0.022118852 -5.20766783 4.38891602 0.022816382
		 -5.22287941 4.36333275 0.1155568 -4.94865513 4.59106541 -0.16088393 -4.95715761 4.70842218 -0.14059423
		 -5.18791866 4.72603512 -0.21792427 -5.16767263 4.50705481 -0.27837247 -4.93059301 4.71275234 -0.038334418
		 -5.1842289 4.8363266 -0.024775166 -5.17173147 4.77571583 -0.12601708 -4.94023466 4.71376038 0.030284483
		 -4.91073132 4.60802794 0.067370772 -5.014812946 4.56585836 0.33301234 -5.1202898 4.78253508 0.27258369
		 -5.49625397 4.43529081 0.13079925 -5.42320538 4.4824872 0.0090650972 -5.60593319 4.5750885 0.0038651044
		 -5.63896894 4.58011866 0.16123629 -5.4381237 4.55116367 -0.36824298 -5.4204216 4.75815916 -0.29701763
		 -5.61861086 4.78085375 -0.32203332 -5.61876297 4.57884073 -0.3831147 -5.43454838 4.83210182 -0.20747353
		 -5.63218117 4.87673187 -0.21102375 -5.76464415 4.58968258 0.0067048888 -5.82821751 4.63494253 0.14023915
		 -5.80367994 4.59873199 0.24852291 -5.7494297 4.81649351 -0.33250904 -5.75772429 4.66800261 -0.38288611
		 -5.78589439 4.88833952 -0.22434902 -5.65552759 4.8419385 0.2984181 -5.68199921 4.67829752 0.35292006
		 -5.73565197 4.68937111 0.34252116 -5.71859026 4.84939194 0.3023985 -5.92535019 4.72135735 -0.12864922
		 -5.92429304 4.8817997 -0.13754214 -5.93627501 4.74821663 0.12146143 -5.93797112 4.88151503 0.11310722
		 -5.2443285 4.60872746 0.52205533 -5.34093237 4.79464388 0.49810427 -5.47753 4.44599771 0.3081218
		 -5.67172337 4.55394125 0.32123381 -5.43815422 4.81988573 0.29639351 -4.93755722 4.49249887 -0.089602269
		 -4.95029783 4.48427773 -0.16555709 -5.24069166 4.3011055 -0.18469806 -5.20683956 4.32597637 -0.075181469
		 -5.65737009 4.42969179 -0.15900436 -5.4410224 4.35979128 -0.13593258 -5.45707226 4.35162258 -0.27397174
		 -5.66328812 4.416646 -0.31072021 -5.80767488 4.55495501 -0.23334928 -5.74549007 4.4884634 -0.33803034
		 -5.20040274 4.82246971 0.094260611 -5.66948128 4.93113375 -0.044005603 -5.42894793 4.8871007 -0.03493809
		 -5.44300795 4.86788225 0.13120773 -5.72751951 4.91643429 0.17596532 -5.75098562 4.93502855 -0.018732782
		 -5.77597666 4.9189024 0.22569369 -5.78766012 4.91885948 0.1205502;
	setAttr ".vt[166:250]" -5.79002714 4.89100122 -0.10370384 -4.66457605 4.54371309 0.032271121
		 -4.80687141 4.51497555 0.059072457 -4.90237141 4.49973679 0.075126886 -5.21985292 4.33782148 0.28851676
		 -5.34194803 4.41454124 0.53044236 -5.72368765 4.60485077 0.31763631 -5.94062376 4.64257526 0.12629858
		 -5.92879152 4.61989307 -0.12136541 -5.83797932 4.61447811 -0.13461818 -4.54905224 4.62432384 -0.1293955
		 -4.54020786 4.68225002 -0.11935053 -4.54380655 4.53374863 -0.040464994 -4.54190636 4.5622921 -0.1190545
		 -4.541327 4.56536293 0.036771506 -4.5412426 4.6231246 0.049075115 -4.53916979 4.70655155 -0.041374244
		 -4.55437088 4.68482494 0.039040662 -4.37989378 4.56257963 -0.12397099 -4.38147211 4.67158937 -0.12255152
		 -4.37737942 4.52421045 -0.043683503 -4.37619019 4.56303024 0.035250146 -4.37766981 4.66889715 0.039599728
		 -4.38005066 4.70322132 -0.041637011 -4.14724159 4.66525507 -0.12509365 -4.15197754 4.57094145 -0.13194217
		 -3.90156436 4.57470322 -0.13762096 -3.89599895 4.66798115 -0.12160233 -4.15902758 4.51745224 -0.051796671
		 -3.90030241 4.51204157 -0.062491454 -4.15126038 4.56066942 0.0316904 -3.89473438 4.5455575 0.028146205
		 -4.16084337 4.65298033 0.041407567 -3.89188766 4.64003515 0.04732481 -4.15406656 4.70325518 -0.038218908
		 -3.891536 4.70070934 -0.029318681 -3.60420346 4.65827036 -0.1197708 -3.60798645 4.56247902 -0.14054306
		 -3.31544876 4.55927801 -0.14863707 -3.31178522 4.6590991 -0.1139932 -3.60240841 4.49620867 -0.066905163
		 -3.31467867 4.47929525 -0.077748001 -3.60244012 4.52700996 0.029094145 -3.31011534 4.49798536 0.027898846
		 -3.61063528 4.62275267 0.052425958 -3.3087759 4.60019302 0.063691229 -3.60331345 4.68939734 -0.023513673
		 -3.30856013 4.68105364 -0.0088149374 -2.73512983 4.65620708 -0.13868125 -2.73645234 4.5345149 -0.16153899
		 -2.38996625 4.52566862 -0.15497766 -2.39265561 4.64735603 -0.146281 -2.74866271 4.45234871 -0.06832698
		 -2.38876557 4.45472336 -0.060118482 -2.74318576 4.49332571 0.043636102 -2.38348103 4.50955915 0.039269619
		 -2.73501587 4.61404514 0.064636424 -2.381109 4.62134552 0.04904151 -2.7332406 4.69653749 -0.024065588
		 -2.38551688 4.69071674 -0.037340298 -2.10634136 4.64879513 -0.13928539 -2.10493302 4.53037643 -0.16061875
		 -1.71708226 4.52312279 -0.15860991 -1.71734571 4.64008331 -0.14036229 -2.10500526 4.45455885 -0.068987183
		 -1.72053373 4.4482832 -0.062181696 -2.10204887 4.49636269 0.040850911 -1.6054225 4.49295235 0.052957252
		 -2.094722509 4.6115613 0.054309629 -1.72427917 4.61542892 0.063382849 -2.09713459 4.68336105 -0.02801425
		 -1.83697259 4.68163776 -0.029780848 -1.39813268 4.52206326 -0.13139175 -1.39636016 4.61836147 -0.11821942
		 -1.39341927 4.46362209 -0.058065638 -1.40143311 4.50115013 0.036754273 -1.39943576 4.59925842 0.049947314
		 -1.60941577 4.68123245 -0.028230185 -1.39855087 4.65706968 -0.026646458 -3.032269239 4.54825163 -0.15667884
		 -3.031484604 4.65908575 -0.12412976 -3.033356905 4.46422243 -0.075866863 -3.03365922 4.49057436 0.034564484
		 -3.032853127 4.60222149 0.066312842 -3.031759501 4.68728256 -0.012560614;
	setAttr -s 491 ".ed";
	setAttr ".ed[0:165]"  1 0 1 1 2 1 2 3 1 4 3 1 0 4 1 3 5 1 4 6 1 6 5 1 5 7 1
		 6 8 1 8 7 1 7 9 1 8 10 1 10 9 1 9 11 1 10 12 1 12 11 1 11 13 1 14 13 1 12 14 1 13 15 1
		 16 15 1 17 16 1 14 17 1 18 2 1 15 18 1 13 3 1 11 5 1 17 19 1 19 0 1 14 4 1 12 6 1
		 21 20 1 21 22 1 22 23 1 24 23 1 20 24 1 23 25 1 24 26 1 26 25 1 25 27 1 28 27 1 26 28 1
		 27 29 1 30 29 1 28 30 1 29 31 1 32 31 1 30 32 1 31 33 1 34 33 1 32 34 1 33 35 1 34 36 1
		 36 35 1 35 37 1 38 37 1 36 38 1 37 39 1 40 39 1 41 40 1 38 41 1 42 22 1 39 42 1 37 23 1
		 35 25 1 33 27 1 41 43 1 43 20 1 38 24 1 36 26 1 34 28 1 45 44 1 45 46 1 46 47 1 48 47 1
		 44 48 1 47 49 1 50 49 1 48 50 1 49 51 1 50 52 1 52 51 1 51 53 1 54 53 1 52 54 1 53 55 1
		 56 55 1 54 56 1 55 57 1 56 58 1 58 57 1 57 59 1 60 59 1 58 60 1 59 61 1 62 61 1 60 62 1
		 61 63 1 64 63 1 65 64 1 62 65 1 66 46 1 63 66 1 61 47 1 59 49 1 57 51 1 65 67 1 44 67 1
		 62 48 1 60 50 1 58 52 1 68 69 1 69 70 1 71 70 1 68 71 1 70 72 1 71 73 1 73 72 1 72 74 1
		 75 74 1 73 75 1 74 76 1 77 76 1 75 77 1 76 78 1 79 78 1 77 79 1 78 80 1 81 80 1 79 81 1
		 80 82 1 81 83 1 83 82 1 82 84 1 85 84 1 83 85 1 84 86 1 87 86 1 85 87 1 88 69 1 88 86 1
		 84 70 1 82 72 1 80 74 1 87 89 1 89 68 1 85 71 1 83 73 1 81 75 1 90 91 1 91 92 1 93 92 1
		 90 93 1 92 94 1 94 95 1 93 95 1 96 97 1 97 98 1 98 99 1 96 99 1 100 101 1 101 102 1
		 102 103 1 100 103 1 105 104 1;
	setAttr ".ed[166:331]" 105 106 1 106 107 1 107 104 1 109 108 1 109 110 1 110 111 1
		 111 108 1 112 109 1 112 113 1 113 114 1 114 110 1 116 115 1 116 117 1 117 118 1 115 118 1
		 119 120 1 120 121 1 121 122 1 122 119 1 123 124 1 124 125 1 125 126 1 126 123 1 124 127 1
		 127 128 1 128 125 1 121 129 1 129 130 1 130 131 1 131 122 1 125 132 1 132 133 1 133 126 1
		 128 134 1 134 132 1 136 135 1 136 137 1 137 138 1 135 138 1 139 19 1 140 17 1 140 139 1
		 66 141 1 141 142 1 63 142 1 117 143 1 143 144 1 118 144 1 145 146 1 146 69 1 69 145 1
		 135 86 1 88 136 1 147 135 1 147 86 1 149 148 1 149 150 1 150 151 1 151 148 1 152 153 1
		 153 154 1 154 155 1 155 152 1 156 152 1 155 157 1 157 156 1 115 112 1 118 158 1 158 113 1
		 160 159 1 160 161 1 161 162 1 162 159 1 159 163 1 162 164 1 164 165 1 165 163 1 161 147 1
		 135 162 1 138 164 1 127 160 1 159 128 1 163 166 1 166 134 1 167 168 1 168 91 1 167 90 1
		 169 116 1 169 170 1 170 117 1 170 171 1 171 143 1 146 136 1 172 137 1 146 172 1 173 46 1
		 173 141 1 0 174 1 139 174 1 126 155 1 133 157 1 154 123 1 108 149 1 111 150 1 98 101 1
		 99 100 1 137 67 1 138 65 1 164 64 1 142 165 1 134 16 1 166 140 1 132 15 1 18 133 1
		 157 2 1 1 156 1 130 173 1 45 131 1 172 44 1 131 172 1 174 175 1 156 175 1 129 21 1
		 20 173 1 141 43 1 142 41 1 163 40 1 39 140 1 42 139 1 174 22 1 175 129 1 94 97 1
		 95 96 1 102 168 1 103 167 1 99 176 1 177 176 1 96 177 1 103 178 1 179 178 1 100 179 1
		 167 180 1 178 180 1 90 181 1 180 181 1 95 182 1 183 182 1 93 183 1 182 177 1 176 179 1
		 179 184 1 184 185 1 177 185 1 178 186 1 186 184 1 180 187 1 187 186 1 181 183 1 183 188 1
		 188 187 1 182 189 1 189 188 1 185 189 1 190 191 1 191 192 1 192 193 1;
	setAttr ".ed[332:490]" 190 193 1 191 194 1 194 195 1 195 192 1 194 196 1 196 197 1
		 197 195 1 196 198 1 198 199 1 199 197 1 198 200 1 200 201 1 201 199 1 200 190 1 193 201 1
		 202 203 1 203 204 1 204 205 1 202 205 1 203 206 1 206 207 1 207 204 1 206 208 1 208 209 1
		 209 207 1 208 210 1 210 211 1 211 209 1 210 212 1 212 213 1 213 211 1 212 202 1 205 213 1
		 214 215 1 215 216 1 216 217 1 214 217 1 215 218 1 218 219 1 219 216 1 218 220 1 220 221 1
		 221 219 1 220 222 1 222 223 1 223 221 1 222 224 1 224 225 1 225 223 1 224 214 1 217 225 1
		 226 227 1 227 228 1 226 229 1 227 230 1 230 231 1 230 232 1 232 233 1 232 234 1 234 235 1
		 234 236 1 236 237 1 237 235 1 236 226 1 229 237 1 229 228 1 228 238 1 239 238 1 229 239 1
		 228 231 1 231 240 1 238 240 1 231 233 1 233 241 1 233 235 1 235 242 1 235 243 1 243 244 1
		 242 244 1 243 229 1 244 239 1 238 241 1 239 241 1 240 241 1 242 241 1 244 241 1 91 116 1
		 92 115 1 112 94 1 97 109 1 108 98 1 101 149 1 148 105 1 105 102 1 168 169 1 104 169 1
		 122 146 1 145 119 1 107 170 1 152 121 1 120 153 1 151 106 1 170 145 1 171 69 1 119 107 1
		 106 120 1 153 151 1 150 154 1 123 111 1 110 124 1 114 127 1 113 160 1 158 161 1 118 147 1
		 144 86 1 216 227 1 217 226 1 219 230 1 221 232 1 223 234 1 225 236 1 204 245 1 245 246 1
		 205 246 1 207 247 1 247 245 1 209 248 1 248 247 1 211 249 1 249 248 1 213 250 1 250 249 1
		 246 250 1 192 203 1 193 202 1 195 206 1 197 208 1 199 210 1 201 212 1 144 87 1 68 171 1
		 143 89 1 245 215 1 246 214 1 247 218 1 248 220 1 249 222 1 250 224 1 237 243 1 184 191 1
		 185 190 1 186 194 1 187 196 1 188 198 1 189 200 1 181 188 1 181 187 1 176 184 1 176 185 1;
	setAttr -s 245 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.62757915 -1.59022737 0.06894663 -0.019389628
		 -1.70820844 0.095291056 0.35189107 -1.27566469 -1.084566474 -0.21734992 -1.61204803
		 -0.53055865 -0.21734992 -1.61204803 -0.53055865 -0.1420128 -1.13752949 1.27015412
		 0.36441588 -1.27122653 -1.085640907 -0.14201219 -1.13752937 1.27015424 0.36441681
		 -1.27122653 -1.085640669 -0.11222508 1.27104175 1.13986433 0.39420381 1.13734269
		 -1.2159307 -0.11222465 1.27104092 1.1398654 0.39420408 1.13734353 -1.21592975 0.0099380892
		 1.70830011 -0.095100768 0.3807463 1.12931097 -1.22764874 -0.7112003 1.51965427 -0.33507818
		 0.011224516 1.69132185 -0.25833458 0.206018 1.12225878 -1.2749604 -0.016824158 -0.10092475
		 -1.70791197 -1.6800307 -0.035591967 -0.32196656 -0.91285592 -1.44159043 0.12626779
		 -0.071521811 -1.70662451 0.098741621 -0.019389628 -1.70820844 0.095291056 -0.62757915
		 -1.59022737 0.06894663 -0.13509911 -1.70316029 0.091791026 0.13528787 -1.14071667
		 1.26802802 0.1049447 -1.27065551 -1.14098799 0.13528898 -1.14071655 1.26802802 0.10494586
		 -1.27065539 -1.14098799 -0.91065139 -0.95523953 1.088881969 -0.93641734 -1.065571189
		 -0.95661539 -0.88536632 1.089274526 0.97828406 -0.91113049 0.97894359 -1.06721282
		 0.1650677 1.26714158 1.13777733 0.13472457 1.13720429 -1.2712388 0.16506745 1.26714122
		 1.13777769 0.13472438 1.13720465 -1.27123857 -0.041933317 1.70865476 -0.078569062
		 0.0099380892 1.70830011 -0.095100768 -0.94397652 1.42559302 0.063446552 -0.18086316
		 1.69930792 -0.084105805 -0.7112003 1.51965427 -0.33507818 -1.6800307 -0.035591967
		 -0.32196656 -1.70091534 -0.011277916 0.18491118 0.11716522 -1.15765274 1.25441003
		 0.41463992 -1.15085435 1.19626093 -0.071521811 -1.70662451 0.098741621 -0.91285592
		 -1.44159043 0.12626779 0.11716522 -1.15765274 1.25441003 0.43596584 -1.14898741 1.19045973
		 -0.21739927 -1.26641583 -1.12976146 0.43596548 -1.1489861 1.19046104 -0.21739891
		 -1.26641655 -1.12976062 -0.61612546 -0.94668955 1.28514624 -1.16988266 -1.046217442
		 -0.68134862 -0.59087956 1.094682217 1.17471886 -1.14463544 0.99515468 -0.79177606
		 0.46575227 1.25958073 1.060171485 -0.18761215 1.14215076 -1.26004982 0.46575409 1.25957966
		 1.060171962 -0.18761095 1.14215136 -1.26004958 0.44246474 1.26209927 1.067128301
		 -0.041933317 1.70865476 -0.078569062 0.46174788 1.1413033 1.18812788 0.087259062
		 1.70673704 0.082866766 -0.94397652 1.42559302 0.063446552 -1.70091534 -0.011277916
		 0.18491118 0.11716522 -1.15765274 1.25441003 0.47450835 -1.11668205 1.20635629 0.9009589
		 -1.17646992 0.8553502 -0.775383 -1.24582326 -0.87985116 -1.0036799908 -1.3701781
		 0.20656937 0.91867542 -1.17485893 0.83855492 -0.80895543 -1.24806881 -0.84578228
		 0.92912501 -1.17548084 0.82607734 -0.82146323 -1.24749577 -0.83449674 0.077182405
		 -0.94669127 1.42311311 -1.39419127 -0.99134392 0.030005079 0.18383092 1.11162519
		 1.28760552 -1.34297311 1.050325155 -0.14377996 1.039533377 1.20997787 0.61867297
		 -0.70371735 1.16141284 -1.040833473 1.029833794 1.21169853 0.63139647 -0.69071651
		 1.15967727 -1.051423788 0.9996013 1.21200919 0.67768973 -0.66829163 1.16761005 -1.057121277
		 0.71294558 1.27515447 0.89057404 -0.50201291 1.61039841 0.28641263 -1.65614188 0.026577158
		 0.42885935 1.049166441 0.10363244 1.34756899 0.16480327 0.025511594 1.70282745 0.16466057
		 0.025537053 1.70284092 0.23147255 0.11067981 1.69162726 0.23173708 0.11150426 1.6915369
		 0.11140788 1.56839573 -0.67465228 0.099993348 1.57381463 -0.66373277 0.11317381 1.56869984
		 -0.67365044 0.19819641 -0.65323675 -1.56889522 0.26111037 -0.61315852 -1.57584596
		 0.1184898 1.5876596 -0.62668133 0.1985831 -0.65124375 -1.56967461 0.21855335 -1.69623721
		 0.049458884 0.21246718 -1.69740224 0.033401284 0.26112774 -0.6079573 -1.57785702
		 0.58775938 -1.58240855 0.27920347 0.045017246 -1.68063557 -0.31760043 0.098255247
		 -1.70370209 0.12319723 0.58777452 -1.5823108 0.27972451 0.58476937 0.042252246 -1.60738671
		 0.63395101 -0.11729991 -1.58485937 0.6181832 1.079610467 -1.17461622 0.51179528 1.18210018
		 -1.12611604 0.47565731 1.51472437 -0.63780296 0.53924525 1.61530209 -0.16566923 0.57871687
		 1.57620597 0.32877594 0.57990152 1.56428504 0.37968248 0.80230242 1.40279758 0.56205142
		 1.38372827 -0.10422979 1.00093197823 0.93659407 0.071922794 1.43005288 -0.79999793
		 -1.46223962 -0.38638225 -0.76316816 -1.51482475 -0.22430485 -0.78444713 -1.49376452
		 0.28415209 -0.74973202 -1.52471793 0.20141831 0.25627509 -0.1165776 -1.6876508 -0.084127501
		 -0.050265275 -1.70816517 0.26102608 1.054012537 -1.32225382 0.40007976 1.047168851
		 -1.29259658 0.24254365 1.56998599 -0.63541234 0.40309241 1.52215457 -0.66932356 -0.44042769
		 -1.65329397 0.0086514642 -0.33549905 -1.6777091 0.012843456 -0.45422602 -1.63929939
		 0.18387131 -0.31862473 -0.040760811 -1.68055034 0.11210803 1.093738556 -1.31095386
		 0.018084656 1.64310479 -0.47677246 0.13854311 1.18244421 1.22884655 0.13854311 1.18244421
		 1.22884655 -0.42257819 -0.4403452 1.598423 -0.42257819 -0.4403452 1.598423 -1.6800307
		 -0.035591967 -0.32196656 -0.7112003 1.51965427 -0.33507818 -0.94397652 1.42559302
		 0.063446552 -1.70091534 -0.011277916 0.18491118 0.5545035 1.34150803 0.90571219 1.055054426
		 0.011341983 1.34690905 -0.77706075 -1.52420676 0.020076059 -1.011845469 -1.24185801
		 0.60115701 0.20722201 1.62912488 0.4800455 0.71961069 -1.47070873 -0.49659714 0.20805827
		 -1.63804758 0.44826806 0.48301873 -1.4393754 -0.78887486 0.71953797 -1.469625 -0.49989966
		 -0.90420872 -1.36209691 0.50451058 -0.81380928 -1.21276498 -0.89126194 -0.19064283
		 -1.49345827 -0.81281596 -0.49838907 -1.50627375 0.64045292 -0.81495136 -1.49017513
		 0.20655419 -0.92974371 -1.093014598 -0.93184125 0.45959842 1.62653077 0.26570523
		 0.01167395 1.70820117 -0.09666799 0.13479635 1.67733026 0.3095569 0.32695296 1.63564014
		 0.38107169 0.38797596 1.66249824 -0.11404634 0.01167395 1.70820117 -0.09666799 0.13479635
		 1.67733026 0.3095569 0.13479635 1.67733026 0.3095569;
	setAttr ".n[166:244]" -type "float3"  -0.20018747 1.67622089 -0.27864131 0.16416734
		 0.023021165 1.70292437 0.23166227 0.10518136 1.69195211 0.43695134 -1.60213971 0.41189119
		 0.58778894 -1.58221745 0.28022256 0.15519746 -1.30403745 1.096737146 -0.42257819
		 -0.4403452 1.598423 -0.91285592 -1.44159043 0.12626779 -0.62757915 -1.59022737 0.06894663
		 -0.62757915 -1.59022737 0.06894663 0.07481961 -0.00092988386 -1.70933723 0.074470446
		 -0.0029969185 -1.70934999 0.075048447 -0.0012017745 -1.70932698 0.051475026 -1.53085482
		 0.76240826 0.055004433 -1.53028774 0.76329976 0.062751591 0.60935813 1.59755349 0.061920695
		 0.6121853 1.59650469 0.11696091 1.70692325 0.012865121 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 -0.027618326 -0.73735571 -1.54368913 -0.034023948 -0.58957386 -1.60582602
		 -0.034626625 -0.58788079 -1.60643375 -0.027448157 -0.73929429 -1.54276466 -0.034637827
		 -0.5872997 -1.60664606 -0.027467158 -0.74527216 -1.53988552 -0.022850692 -0.30957443
		 1.68257952 0.013320689 -0.14123686 1.70508265 -0.022613445 -0.30721864 1.68301451
		 0.014110324 -0.13128941 1.70587111 -0.010887758 1.68598247 0.29116482 0.018245298
		 1.70519817 0.13927987 -0.029902058 1.14717531 -1.26906538 -0.024476871 1.288643 -1.12527001
		 -0.05461457 -0.32247236 -1.67942286 -0.022071155 -0.52674937 -1.62772238 -0.075412646
		 -1.61325705 -0.56493086 -0.019783579 -1.67119706 -0.36625344 -0.061656259 -1.29125619
		 1.1208427 -0.028384157 -1.16533947 1.25244188 -0.02744461 0.33636156 1.67736101 -0.0339639
		 0.50761908 1.63358557 -0.010728892 1.62090933 0.54769552 -0.033061072 1.67150092
		 0.36390078 0.012246794 1.13433206 -1.28084862 0.031004222 1.027905107 -1.36743629
		 -0.0093753189 -0.71307594 -1.55527067 -0.033380382 -0.55923665 -1.61665475 -0.025250318
		 -1.70536804 -0.13606806 -0.052899245 -1.6804198 -0.31752685 -0.0021097697 -0.95093077
		 1.42237782 -0.018268729 -1.10896826 1.30280006 0.034454115 0.69257033 1.56415844
		 0.028983865 0.54100567 1.622931 0.052218575 1.69224572 0.24700235 0.040611763 1.67084038
		 0.36616305 0.029008647 1.13098419 -1.28353631 0.1340297 1.071940184 -1.32680547 0.099280514
		 -0.64203697 -1.58283424 -0.018732239 -0.58772236 -1.60675573 0.056262329 -1.6948694
		 -0.22734255 -0.056367997 -1.68682206 -0.28086755 0.046516482 -1.02666378 1.36792922
		 -0.054943603 -1.064185977 1.33862674 0.070706055 0.68751132 1.56517136 -0.01271184
		 0.59889489 1.6026839 1e+020 1e+020 1e+020 0.033110622 1.67365003 0.35388097 1.54234576
		 -0.27271831 -0.68864113 1.54234767 -0.27269515 -0.68864602 1.54233801 -0.27281967
		 -0.68861848 1.60970318 -0.061970975 0.57658261 1.6097461 -0.061628886 0.57649934
		 1.36173677 1.02377069 0.15810996 0.11268193 1.69054568 0.23830746;
	setAttr -s 242 -ch 982 ".fc[0:241]" -type "polyFaces" 
		f 5 4 3 -3 -2 0
		mu 0 5 0 1 2 3 4
		f 4 6 7 -6 -4
		mu 0 4 1 5 6 2
		f 4 9 10 -9 -8
		mu 0 4 5 7 8 6
		f 4 12 13 -12 -11
		mu 0 4 7 9 10 8
		f 4 15 16 -15 -14
		mu 0 4 9 11 12 10
		f 4 19 18 -18 -17
		mu 0 4 11 13 14 12
		f 5 23 22 21 -21 -19
		mu 0 5 13 15 16 17 14
		f 5 2 -27 20 25 24
		mu 0 5 3 2 18 19 20
		f 4 5 -28 17 26
		mu 0 4 2 6 21 18
		f 4 8 11 14 27
		mu 0 4 6 8 22 21
		f 5 -24 30 -5 -30 -29
		mu 0 5 23 24 1 0 25
		f 4 -20 31 -7 -31
		mu 0 4 24 26 5 1
		f 4 -16 -13 -10 -32
		mu 0 4 26 27 7 5
		f 5 36 35 -35 -34 32
		mu 0 5 28 29 30 31 32
		f 4 38 39 -38 -36
		mu 0 4 29 33 34 30
		f 4 42 41 -41 -40
		mu 0 4 33 35 36 34
		f 4 45 44 -44 -42
		mu 0 4 35 37 38 36
		f 4 48 47 -47 -45
		mu 0 4 37 39 40 38
		f 4 51 50 -50 -48
		mu 0 4 39 41 42 40
		f 4 53 54 -53 -51
		mu 0 4 41 43 44 42
		f 4 57 56 -56 -55
		mu 0 4 43 45 46 44
		f 5 61 60 59 -59 -57
		mu 0 5 45 47 48 49 46
		f 5 34 -65 58 63 62
		mu 0 5 31 30 50 51 52
		f 4 37 -66 55 64
		mu 0 4 30 34 53 50
		f 4 40 -67 52 65
		mu 0 4 34 36 54 53
		f 4 43 46 49 66
		mu 0 4 36 38 55 54
		f 5 -62 69 -37 -69 -68
		mu 0 5 56 57 29 28 58
		f 4 -58 70 -39 -70
		mu 0 4 57 59 33 29
		f 4 -54 71 -43 -71
		mu 0 4 59 60 35 33
		f 4 -52 -49 -46 -72
		mu 0 4 60 61 37 35
		f 5 76 75 -75 -74 72
		mu 0 5 62 63 64 65 66
		f 4 79 78 -78 -76
		mu 0 4 63 67 68 64
		f 4 81 82 -81 -79
		mu 0 4 67 69 70 68
		f 4 85 84 -84 -83
		mu 0 4 69 71 72 70
		f 4 88 87 -87 -85
		mu 0 4 71 73 74 72
		f 4 90 91 -90 -88
		mu 0 4 73 75 76 74
		f 4 94 93 -93 -92
		mu 0 4 75 77 78 76
		f 4 97 96 -96 -94
		mu 0 4 77 79 80 78
		f 5 101 100 99 -99 -97
		mu 0 5 79 81 82 83 80
		f 5 74 -105 98 103 102
		mu 0 5 65 64 84 85 86
		f 4 77 -106 95 104
		mu 0 4 64 68 87 84
		f 4 80 -107 92 105
		mu 0 4 68 70 88 87
		f 4 83 86 89 106
		mu 0 4 70 72 89 88
		f 5 -102 109 -77 108 -108
		mu 0 5 90 91 63 62 92
		f 4 -98 110 -80 -110
		mu 0 4 91 93 67 63
		f 4 -95 111 -82 -111
		mu 0 4 93 94 69 67
		f 4 -91 -89 -86 -112
		mu 0 4 94 95 71 69
		f 4 115 114 -114 -113
		mu 0 4 96 97 98 99
		f 4 117 118 -117 -115
		mu 0 4 97 100 101 98
		f 4 121 120 -120 -119
		mu 0 4 100 102 103 101
		f 4 124 123 -123 -121
		mu 0 4 102 104 105 103
		f 4 127 126 -126 -124
		mu 0 4 104 106 107 105
		f 4 130 129 -129 -127
		mu 0 4 106 108 109 107
		f 4 132 133 -132 -130
		mu 0 4 108 110 111 109
		f 4 136 135 -135 -134
		mu 0 4 110 112 113 111
		f 4 139 138 -138 -136
		mu 0 4 112 114 115 113
		f 5 113 -143 137 -142 140
		mu 0 5 99 98 116 117 118
		f 4 116 -144 134 142
		mu 0 4 98 101 119 116
		f 4 119 -145 131 143
		mu 0 4 101 103 120 119
		f 4 122 125 128 144
		mu 0 4 103 105 121 120
		f 5 -140 147 -116 -147 -146
		mu 0 5 122 123 97 96 124
		f 4 -137 148 -118 -148
		mu 0 4 123 125 100 97
		f 4 -133 149 -122 -149
		mu 0 4 125 126 102 100
		f 4 -131 -128 -125 -150
		mu 0 4 126 127 104 102
		f 4 153 152 -152 -151
		mu 0 4 128 129 130 131
		f 4 156 -156 -155 -153
		mu 0 4 129 132 133 130
		f 4 160 -160 -159 -158
		mu 0 4 134 135 136 137
		f 4 164 -164 -163 -162
		mu 0 4 138 139 140 141
		f 4 -169 -168 -167 165
		mu 0 4 142 143 144 145
		f 4 -173 -172 -171 169
		mu 0 4 146 147 148 149
		f 5 170 -177 -176 -175 173
		mu 0 5 149 148 150 151 152
		f 4 180 -180 -179 177
		mu 0 4 153 154 155 156
		f 4 -185 -184 -183 -182
		mu 0 4 157 158 159 160
		f 4 -189 -188 -187 -186
		mu 0 4 161 162 163 164
		f 4 186 -192 -191 -190
		mu 0 4 164 163 165 166
		f 5 -196 -195 -194 -193 183
		mu 0 5 158 167 168 169 159
		f 4 -199 -198 -197 187
		mu 0 4 162 170 171 163
		f 4 196 -201 -200 191
		mu 0 4 163 171 172 165
		f 4 204 -204 -203 201
		mu 0 4 173 174 175 176
		f 4 -208 206 28 -206
		mu 0 4 177 178 179 180
		f 4 -104 210 -210 -209
		mu 0 4 181 182 183 184
		f 4 213 -213 -212 179
		mu 0 4 154 185 186 155
		f 3 -217 -216 -215
		mu 0 3 187 188 189
		f 4 -219 141 -218 -202
		mu 0 4 176 190 191 173
		f 3 217 -221 219
		mu 0 3 173 191 192
		f 4 -225 -224 -223 221
		mu 0 4 193 194 195 196
		f 4 -229 -228 -227 -226
		mu 0 4 197 198 199 200
		f 4 -232 -231 228 -230
		mu 0 4 201 202 198 197
		f 5 174 -235 -234 -181 232
		mu 0 5 152 151 203 154 153
		f 4 -239 -238 -237 235
		mu 0 4 204 205 206 207
		f 5 -243 -242 -241 238 239
		mu 0 5 208 209 210 205 204
		f 4 -245 -220 -244 237
		mu 0 4 205 173 192 206
		f 4 -246 -205 244 240
		mu 0 4 210 174 173 205
		f 4 190 -248 -236 -247
		mu 0 4 166 165 204 207
		f 5 -250 -249 -240 247 199
		mu 0 5 172 211 208 204 165
		f 4 252 150 -252 -251
		mu 0 4 212 128 131 213
		f 4 -256 -255 253 178
		mu 0 4 155 214 215 156
		f 4 -258 -257 255 211
		mu 0 4 186 216 214 155
		f 4 215 -141 218 -259
		mu 0 4 217 218 190 176
		f 4 -261 258 202 -260
		mu 0 4 219 217 176 175
		f 4 -103 208 -263 261
		mu 0 4 220 181 184 221
		f 4 -265 205 29 263
		mu 0 4 222 177 180 223
		f 4 230 -267 198 265
		mu 0 4 224 225 170 162
		f 4 227 -266 188 -268
		mu 0 4 226 224 162 161
		f 4 222 -270 172 268
		mu 0 4 227 228 147 146
		f 4 271 161 -271 159
		mu 0 4 135 229 230 136
		f 4 273 107 -273 203
		mu 0 4 174 231 232 175
		f 4 -101 -274 245 274
		mu 0 4 233 231 174 210
		f 5 -211 -100 -275 241 -276
		mu 0 5 183 182 233 210 209
		f 5 -23 -207 -278 249 276
		mu 0 5 234 179 178 211 172
		f 4 278 -22 -277 200
		mu 0 4 171 235 234 172
		f 4 -280 -26 -279 197
		mu 0 4 170 236 235 171
		f 4 280 -25 279 266
		mu 0 4 225 237 236 170
		f 4 1 -281 231 -282
		mu 0 4 238 239 202 201
		f 5 -284 73 -262 -283 194
		mu 0 5 167 240 241 242 168
		f 4 -109 -285 259 272
		mu 0 4 232 243 219 175
		f 4 284 -73 283 285
		mu 0 4 244 245 240 167
		f 5 -264 -1 281 287 -287
		mu 0 5 246 247 238 201 248
		f 5 282 -290 -33 -289 193
		mu 0 5 168 242 249 250 169
		f 4 290 68 289 262
		mu 0 4 184 251 252 221
		f 4 291 67 -291 209
		mu 0 4 183 253 251 184
		f 5 -61 -292 275 242 292
		mu 0 5 254 253 183 209 208
		f 5 -294 -60 -293 248 277
		mu 0 5 178 255 254 208 211
		f 4 -64 293 207 -295
		mu 0 4 256 255 178 177
		f 4 -63 294 264 295
		mu 0 4 257 256 177 222
		f 5 33 -296 286 296 288
		mu 0 5 250 258 246 248 169
		f 4 298 157 -298 155
		mu 0 4 132 134 137 133
		f 4 300 250 -300 163
		mu 0 4 139 212 213 140
		f 4 303 302 -302 -161
		mu 0 4 259 260 261 262
		f 4 306 305 -305 -165
		mu 0 4 263 264 265 266
		f 4 304 308 -308 -301
		mu 0 4 266 265 267 268
		f 4 307 310 -310 -253
		mu 0 4 268 267 269 270
		f 4 313 312 -312 -157
		mu 0 4 271 272 273 274
		f 4 311 314 -304 -299
		mu 0 4 274 273 275 276
		f 3 489 -317 -316
		mu 0 3 261 278 264
		f 4 316 -321 -320 -306
		mu 0 4 264 278 279 265
		f 4 319 -323 -322 -309
		mu 0 4 265 279 280 267
		f 3 487 -325 -324
		mu 0 3 269 281 272
		f 4 324 -328 -327 -313
		mu 0 4 272 281 282 273
		f 4 326 -329 -319 -315
		mu 0 4 273 282 283 275
		f 4 332 -332 -331 -330
		mu 0 4 284 285 286 287
		f 4 330 -336 -335 -334
		mu 0 4 287 286 288 289
		f 4 334 -339 -338 -337
		mu 0 4 289 288 290 291
		f 4 337 -342 -341 -340
		mu 0 4 291 290 292 293
		f 4 340 -345 -344 -343
		mu 0 4 293 292 294 295
		f 4 343 -347 -333 -346
		mu 0 4 295 294 296 297
		f 4 350 -350 -349 -348
		mu 0 4 298 299 300 301
		f 4 348 -354 -353 -352
		mu 0 4 301 300 302 303
		f 4 352 -357 -356 -355
		mu 0 4 303 302 304 305
		f 4 355 -360 -359 -358
		mu 0 4 305 304 306 307
		f 4 358 -363 -362 -361
		mu 0 4 307 306 308 309
		f 4 361 -365 -351 -364
		mu 0 4 309 308 310 311
		f 4 368 -368 -367 -366
		mu 0 4 312 313 314 315
		f 4 366 -372 -371 -370
		mu 0 4 315 314 316 317
		f 4 370 -375 -374 -373
		mu 0 4 317 316 318 319
		f 4 373 -378 -377 -376
		mu 0 4 319 318 320 321
		f 4 376 -381 -380 -379
		mu 0 4 321 320 322 323
		f 4 379 -383 -369 -382
		mu 0 4 323 322 324 325
		f 4 385 397 -385 -384
		mu 0 4 326 327 328 329
		f 4 384 401 -388 -387
		mu 0 4 329 328 330 331
		f 4 387 404 -390 -389
		mu 0 4 331 330 332 333
		f 4 389 406 -392 -391
		mu 0 4 333 332 334 335
		f 4 391 -395 -394 -393
		mu 0 4 335 334 336 337
		f 4 393 -397 -386 -396
		mu 0 4 337 336 338 339
		f 4 400 399 -399 -398
		mu 0 4 327 340 341 328
		f 4 398 403 -403 -402
		mu 0 4 328 341 342 330
		f 4 402 415 -406 -405
		mu 0 4 330 342 343 332
		f 4 405 -417 -408 -407
		mu 0 4 332 343 344 334
		f 4 407 410 -410 -409
		mu 0 4 334 344 345 346
		f 4 409 412 -401 -412
		mu 0 4 346 345 347 338
		f 3 414 -414 -400
		mu 0 3 348 351 349
		f 3 413 -416 -404
		mu 0 3 349 351 350
		f 3 416 -418 -411
		mu 0 3 352 351 353
		f 3 417 -415 -413
		mu 0 3 353 351 348
		f 4 309 323 -314 -154
		mu 0 4 270 269 272 271
		f 4 301 315 -307 -272
		mu 0 4 262 261 264 263
		f 4 419 -178 -419 151
		mu 0 4 130 354 355 131
		f 4 -421 -233 -420 154
		mu 0 4 133 356 354 130
		f 4 -423 -170 -422 158
		mu 0 4 136 357 358 137
		f 5 -426 -425 -222 -424 162
		mu 0 5 140 359 360 361 141
		f 4 418 -254 -427 251
		mu 0 4 131 355 362 213
		f 4 423 -269 422 270
		mu 0 4 230 363 357 136
		f 4 421 -174 420 297
		mu 0 4 137 358 356 133
		f 5 426 -428 -166 425 299
		mu 0 5 213 362 364 359 140
		f 4 260 -286 195 428
		mu 0 4 189 244 167 158
		f 4 214 -429 184 -430
		mu 0 4 187 189 158 157
		f 4 254 -431 168 427
		mu 0 4 365 366 143 142
		f 5 -297 -288 229 431 192
		mu 0 5 169 248 201 197 159
		f 4 -432 225 -433 182
		mu 0 4 159 197 200 160
		f 4 166 -434 224 424
		mu 0 4 145 144 194 193
		f 4 256 435 216 -435
		mu 0 4 366 367 188 187
		f 4 434 429 436 430
		mu 0 4 366 187 157 143
		f 4 -437 181 -438 167
		mu 0 4 143 157 160 144
		f 4 438 433 437 432
		mu 0 4 200 194 144 160
		f 4 -440 223 -439 226
		mu 0 4 199 195 194 200
		f 4 439 267 440 269
		mu 0 4 228 226 161 147
		f 4 -441 185 -442 171
		mu 0 4 147 161 164 148
		f 4 441 189 -443 176
		mu 0 4 148 164 166 150
		f 4 442 246 -444 175
		mu 0 4 150 166 207 151
		f 4 -445 234 443 236
		mu 0 4 206 203 151 207
		f 4 -446 233 444 243
		mu 0 4 192 154 203 206
		f 4 -447 -214 445 220
		mu 0 4 191 185 154 192
		f 4 448 383 -448 367
		mu 0 4 313 326 329 314
		f 4 447 386 -450 371
		mu 0 4 314 329 331 316
		f 4 449 388 -451 374
		mu 0 4 316 331 333 318
		f 4 450 390 -452 377
		mu 0 4 318 333 335 320
		f 4 451 392 -453 380
		mu 0 4 320 335 337 322
		f 4 452 395 -449 382
		mu 0 4 322 337 339 324
		f 4 455 -455 -454 349
		mu 0 4 299 368 369 300
		f 4 453 -458 -457 353
		mu 0 4 300 369 370 302
		f 4 456 -460 -459 356
		mu 0 4 302 370 371 304
		f 4 458 -462 -461 359
		mu 0 4 304 371 372 306
		f 4 460 -464 -463 362
		mu 0 4 306 372 373 308
		f 4 462 -465 -456 364
		mu 0 4 308 373 374 310
		f 4 466 347 -466 331
		mu 0 4 285 298 301 286
		f 4 465 351 -468 335
		mu 0 4 286 301 303 288
		f 4 467 354 -469 338
		mu 0 4 288 303 305 290
		f 4 468 357 -470 341
		mu 0 4 290 305 307 292
		f 4 469 360 -471 344
		mu 0 4 292 307 309 294
		f 4 470 363 -467 346
		mu 0 4 294 309 311 296
		f 3 -139 -472 446
		mu 0 3 375 376 377
		f 3 -436 -473 112
		mu 0 3 378 379 380
		f 4 -474 212 471 145
		mu 0 4 381 382 383 384
		f 4 473 146 472 257
		mu 0 4 385 386 387 388
		f 4 475 365 -475 454
		mu 0 4 368 312 315 369
		f 4 474 369 -477 457
		mu 0 4 369 315 317 370
		f 4 476 372 -478 459
		mu 0 4 370 317 319 371
		f 4 477 375 -479 461
		mu 0 4 371 319 321 372
		f 4 478 378 -480 463
		mu 0 4 372 321 323 373
		f 4 479 381 -476 464
		mu 0 4 373 323 325 374
		f 3 408 -481 394
		mu 0 3 334 346 336
		f 3 480 411 396
		mu 0 3 336 346 338
		f 4 482 329 -482 317
		mu 0 4 277 284 287 278
		f 4 481 333 -484 320
		mu 0 4 278 287 289 279
		f 4 483 336 -485 322
		mu 0 4 279 289 291 280
		f 4 484 339 -486 325
		mu 0 4 280 291 293 281
		f 4 485 342 -487 327
		mu 0 4 281 293 295 282
		f 4 486 345 -483 328
		mu 0 4 282 295 297 283
		f 3 488 -326 -488
		mu 0 3 269 280 281
		f 3 321 -489 -311
		mu 0 3 267 280 269
		f 3 490 -318 -490
		mu 0 3 261 277 278
		f 3 318 -491 -303
		mu 0 3 260 277 261;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "lf_eye_render_mesh";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".t" -type "double3" -0.43901479931338105 -0.85910563839633936 1.1579886674518467 ;
	setAttr ".r" -type "double3" -8.2507751858960567 0.19273693574853731 -4.6987768143797153 ;
	setAttr ".rp" -type "double3" 0.87281608491168949 5.5559548340092597 0.50595004799691801 ;
	setAttr ".rpt" -type "double3" 0.452432649227415 -0.075040439898447997 -0.80548415922823347 ;
	setAttr ".sp" -type "double3" 0.87281608491168949 5.5559548340092597 0.50595004799691801 ;
createNode mesh -n "lf_eye_render_meshShape" -p "lf_eye_render_mesh";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.175 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001 0 0.47499999
		 0 0.52500004 0 0.57499999 0 0.625 0 0.67500001 0 0.72500002 0 0.77500004 0 0.82499999
		 0 0.875 0 0.92500001 0 0.97500002 0 0.025 1 0.075000003 1 0.125 1 0.175 1 0.22500001
		 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47499999 1 0.52500004 1 0.57499999
		 1 0.625 1 0.67500001 1 0.72500002 1 0.77500004 1 0.82499999 1 0.875 1 0.92500001
		 1 0.97500002 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0.74547303 6.4013429 0.55262899 0.76449162 
		6.4013429 0.59473872 0.79411376 6.4013429 0.62815714 0.83143985 6.4013429 0.64961308 
		0.87281609 6.4013429 0.65700632 0.91419232 6.4013429 0.64961308 0.95151842 6.4013429 
		0.62815714 0.98114049 6.4013429 0.59473866 1.000159 6.4013429 0.55262899 1.0067124 
		6.4013429 0.50595003 1.000159 6.4013429 0.4592711 0.98114049 6.4013429 0.41716143 
		0.95151836 6.4013429 0.38374302 0.91419232 6.4013429 0.36228707 0.87281609 6.4013429 
		0.35489386 0.83143985 6.4013429 0.36228707 0.79411381 6.4013429 0.38374302 0.76449168 
		6.4013429 0.41716143 0.74547309 6.4013429 0.45927113 0.73891979 6.4013429 0.50595003 
		0.62126559 6.3699889 0.59815854 0.65883446 6.3699889 0.68134105 0.71734935 6.3699889 
		0.74735504 0.79108238 6.3699889 0.78973866 0.87281609 6.3699889 0.80434304 0.95454979 
		6.3699889 0.78973866 1.0282828 6.3699889 0.74735498 1.0867976 6.3699889 0.68134099 
		1.1243665 6.3699889 0.59815854 1.1373118 6.3699889 0.50595003 1.1243665 6.3699889 
		0.41374156 1.0867976 6.3699889 0.3305591 1.0282828 6.3699889 0.26454511 0.95454973 
		6.3699889 0.22216155 0.87281609 6.3699889 0.20755719 0.79108244 6.3699889 0.22216158 
		0.71734947 6.3699889 0.26454514 0.65883464 6.3699889 0.33055913 0.62126577 6.3699889 
		0.41374159 0.60832042 6.3699889 0.50595003 0.50325215 6.3185902 0.64141762 0.55844623 
		6.3185902 0.76362473 0.64441305 6.3185902 0.86060882 0.75273752 6.3185902 0.92287642 
		0.87281609 6.3185902 0.94433236 0.99289465 6.3185902 0.92287636 1.1012191 6.3185902 
		0.86060876 1.1871858 6.3185902 0.76362467 1.2423799 6.3185902 0.64141756 1.2613984 
		6.3185902 0.50595003 1.2423799 6.3185902 0.3704825 1.1871858 6.3185902 0.24827547 
		1.1012191 6.3185902 0.15129143 0.99289465 6.3185902 0.089023843 0.87281609 6.3185902 
		0.067567907 0.75273758 6.3185902 0.089023873 0.64441317 6.3185902 0.15129144 0.55844647 
		6.3185902 0.2482755 0.50325239 6.3185902 0.37048253 0.48423386 6.3185902 0.50595003 
		0.39433864 6.2484136 0.68134105 0.46579888 6.2484136 0.83956355 0.57710081 6.2484136 
		0.96512967 0.71734935 6.2484136 1.045748 0.87281609 6.2484136 1.0735272 1.0282828 
		6.2484136 1.045748 1.1685313 6.2484136 0.96512955 1.2798332 6.2484136 0.83956343 
		1.3512933 6.2484136 0.68134099 1.3759168 6.2484136 0.50595003 1.3512933 6.2484136 
		0.3305591 1.2798331 6.2484136 0.17233667 1.1685313 6.2484136 0.046770636 1.0282828 
		6.2484136 -0.033847712 0.87281609 6.2484136 -0.061626885 0.71734947 6.2484136 -0.033847712 
		0.57710099 6.2484136 0.046770662 0.46579912 6.2484136 0.1723367 0.39433897 6.2484136 
		0.33055913 0.36971548 6.2484136 0.50595003 0.29720682 6.1611857 0.71694577 0.38317358 
		6.1611857 0.90728778 0.51707 6.1611857 1.058344 0.68578935 6.1611857 1.155328 0.87281609 
		6.1611857 1.1887465 1.0598428 6.1611857 1.155328 1.2285621 6.1611857 1.0583439 1.3624583 
		6.1611857 0.90728766 1.4484252 6.1611857 0.71694565 1.4780473 6.1611857 0.50595003 
		1.4484252 6.1611857 0.29495442 1.3624583 6.1611857 0.10461252 1.228562 6.1611857 
		-0.046443656 1.0598428 6.1611857 -0.14342768 0.87281609 6.1611857 -0.17684607 0.68578947 
		6.1611857 -0.14342768 0.51707023 6.1611857 -0.046443596 0.38317391 6.1611857 0.10461255 
		0.29720718 6.1611857 0.29495445 0.2675851 6.1611857 0.50595003 0.21424839 6.0590553 
		0.74735504 0.31260493 6.0590553 0.96512967 0.46579888 6.0590553 1.1379566 0.65883452 
		6.0590553 1.2489182 0.87281609 6.0590553 1.287153 1.0867977 6.0590553 1.2489182 1.2798332 
		6.0590553 1.1379565 1.433027 6.0590553 0.96512949 1.5313835 6.0590553 0.74735498 
		1.5652748 6.0590553 0.50595003 1.5313835 6.0590553 0.26454511 1.433027 6.0590553 
		0.046770606 1.2798331 6.0590553 -0.12605619 1.0867976 6.0590553 -0.23701783 0.87281609 
		6.0590553 -0.27525264 0.65883464 6.0590553 -0.23701783 0.46579912 6.0590553 -0.12605613 
		0.31260529 6.0590553 0.046770662 0.21424879 6.0590553 0.26454517 0.18035749 6.0590553 
		0.50595003 0.1475061 5.9445372 0.77182019 0.25583053 5.9445372 1.0116651 0.42454988 
		5.9445372 1.2020071 0.63714862 5.9445372 1.324214 0.87281609 5.9445372 1.3663237 
		1.1084836 5.9445372 1.324214 1.3210822 5.9445372 1.2020069 1.4898014 5.9445372 1.0116649 
		1.5981258 5.9445372 0.77182007 1.6354518 5.9445372 0.50595003 1.5981258 5.9445372 
		0.24008004 1.4898014 5.9445372 0.00023521826 1.3210821 5.9445372 -0.19010666 1.1084834 
		5.9445372 -0.31231365 0.87281609 5.9445372 -0.35442331 0.63714874 5.9445372 -0.31231359 
		0.42455015 5.9445372 -0.19010662 0.25583094 5.9445372 0.00023527582 0.14750656 5.9445372 
		0.24008007 0.11018053 5.9445372 0.50595003 0.098623298 5.8204503 0.78973866 0.21424839 
		5.8204503 1.0457481 0.39433864 5.8204503 1.2489183 0.62126565 5.8204503 1.3793615 
		0.87281609 5.8204503 1.4243093 1.1243665 5.8204503 1.3793615 1.3512934 5.8204503 
		1.2489182 1.5313836 5.8204503 1.0457479 1.6470085 5.8204503 0.7897386 1.6868502 5.8204503 
		0.50595003 1.6470085 5.8204503 0.22216152 1.5313835 5.8204503 -0.033847768 1.3512933 
		5.8204503 -0.23701788 1.1243665 5.8204503 -0.36746112 0.87281609 5.8204503 -0.41240877 
		0.62126577 5.8204503 -0.36746106 0.39433897 5.8204503 -0.23701783 0.21424879 5.8204503 
		-0.033847712 0.098623812 5.8204503 0.22216158 0.058782164 5.8204503 0.50595003 0.068803772 
		5.6898513 0.80066937 0.18888235 5.6898513 1.0665395 0.37590915 5.6898513 1.2775352 
		0.61157668 5.6898513 1.4130027 0.87281609 5.6898513 1.4596816 1.1340555 5.6898513 
		1.4130026;
	setAttr ".pt[166:331]" 1.369723 5.6898513 1.277535 1.5567496 5.6898513 1.0665393 
		1.6768281 5.6898513 0.80066925 1.7182044 5.6898513 0.50595003 1.6768281 5.6898513 
		0.21123086 1.5567495 5.6898513 -0.054639142 1.3697228 5.6898513 -0.26563472 1.1340554 
		5.6898513 -0.40110224 0.87281609 5.6898513 -0.44778118 0.61157686 5.6898513 -0.40110224 
		0.37590948 5.6898513 -0.26563466 0.18888281 5.6898513 -0.054639082 0.068804234 5.6898513 
		0.21123092 0.02742804 5.6898513 0.50595003 0.058781654 5.5559549 0.80434304 0.18035702 
		5.5559549 1.0735272 0.36971515 5.5559549 1.2871531 0.6083203 5.5559549 1.4243093 
		0.87281609 5.5559549 1.47157 1.1373118 5.5559549 1.4243091 1.375917 5.5559549 1.2871529 
		1.5652748 5.5559549 1.0735271 1.6868502 5.5559549 0.80434293 1.7287422 5.5559549 
		0.50595003 1.6868502 5.5559549 0.20755716 1.5652748 5.5559549 -0.061626945 1.3759168 
		5.5559549 -0.27525264 1.1373118 5.5559549 -0.41240877 0.87281609 5.5559549 -0.45966953 
		0.60832047 5.5559549 -0.41240871 0.36971548 5.5559549 -0.27525258 0.18035749 5.5559549 
		-0.061626885 0.058782164 5.5559549 0.20755722 0.016890191 5.5559549 0.50595003 0.068803772 
		5.4220586 0.80066937 0.18888235 5.4220586 1.0665395 0.37590915 5.4220586 1.2775352 
		0.61157668 5.4220586 1.4130027 0.87281609 5.4220586 1.4596816 1.1340555 5.4220586 
		1.4130026 1.369723 5.4220586 1.277535 1.5567496 5.4220586 1.0665393 1.6768281 5.4220586 
		0.80066925 1.7182044 5.4220586 0.50595003 1.6768281 5.4220586 0.21123086 1.5567495 
		5.4220586 -0.054639142 1.3697228 5.4220586 -0.26563472 1.1340554 5.4220586 -0.40110224 
		0.87281609 5.4220586 -0.44778118 0.61157686 5.4220586 -0.40110224 0.37590948 5.4220586 
		-0.26563466 0.18888281 5.4220586 -0.054639082 0.068804234 5.4220586 0.21123092 0.02742804 
		5.4220586 0.50595003 0.098623298 5.2914591 0.78973866 0.21424839 5.2914591 1.0457481 
		0.39433864 5.2914591 1.2489183 0.62126565 5.2914591 1.3793615 0.87281609 5.2914591 
		1.4243093 1.1243665 5.2914591 1.3793615 1.3512934 5.2914591 1.2489182 1.5313836 5.2914591 
		1.0457479 1.6470085 5.2914591 0.7897386 1.6868502 5.2914591 0.50595003 1.6470085 
		5.2914591 0.22216152 1.5313835 5.2914591 -0.033847768 1.3512933 5.2914591 -0.23701788 
		1.1243665 5.2914591 -0.36746112 0.87281609 5.2914591 -0.41240877 0.62126577 5.2914591 
		-0.36746106 0.39433897 5.2914591 -0.23701783 0.21424879 5.2914591 -0.033847712 0.098623812 
		5.2914591 0.22216158 0.058782164 5.2914591 0.50595003 0.1475061 5.1673727 0.77182019 
		0.25583053 5.1673727 1.0116651 0.42454988 5.1673727 1.2020071 0.63714862 5.1673727 
		1.324214 0.87281609 5.1673727 1.3663237 1.1084836 5.1673727 1.324214 1.3210822 5.1673727 
		1.2020069 1.4898014 5.1673727 1.0116649 1.5981258 5.1673727 0.77182007 1.6354518 
		5.1673727 0.50595003 1.5981258 5.1673727 0.24008004 1.4898014 5.1673727 0.00023521826 
		1.3210821 5.1673727 -0.19010666 1.1084834 5.1673727 -0.31231365 0.87281609 5.1673727 
		-0.35442331 0.63714874 5.1673727 -0.31231359 0.42455015 5.1673727 -0.19010662 0.25583094 
		5.1673727 0.00023527582 0.14750656 5.1673727 0.24008007 0.11018053 5.1673727 0.50595003 
		0.21424839 5.0528541 0.74735504 0.31260493 5.0528541 0.96512967 0.46579888 5.0528541 
		1.1379566 0.65883452 5.0528541 1.2489182 0.87281609 5.0528541 1.287153 1.0867977 
		5.0528541 1.2489182 1.2798332 5.0528541 1.1379565 1.433027 5.0528541 0.96512949 1.5313835 
		5.0528541 0.74735498 1.5652748 5.0528541 0.50595003 1.5313835 5.0528541 0.26454511 
		1.433027 5.0528541 0.046770606 1.2798331 5.0528541 -0.12605619 1.0867976 5.0528541 
		-0.23701783 0.87281609 5.0528541 -0.27525264 0.65883464 5.0528541 -0.23701783 0.46579912 
		5.0528541 -0.12605613 0.31260529 5.0528541 0.046770662 0.21424879 5.0528541 0.26454517 
		0.18035749 5.0528541 0.50595003 0.29720682 4.9507236 0.71694577 0.38317358 4.9507236 
		0.90728778 0.51707 4.9507236 1.058344 0.68578935 4.9507236 1.155328 0.87281609 4.9507236 
		1.1887465 1.0598428 4.9507236 1.155328 1.2285621 4.9507236 1.0583439 1.3624583 4.9507236 
		0.90728766 1.4484252 4.9507236 0.71694565 1.4780473 4.9507236 0.50595003 1.4484252 
		4.9507236 0.29495442 1.3624583 4.9507236 0.10461252 1.228562 4.9507236 -0.046443656 
		1.0598428 4.9507236 -0.14342768 0.87281609 4.9507236 -0.17684607 0.68578947 4.9507236 
		-0.14342768 0.51707023 4.9507236 -0.046443596 0.38317391 4.9507236 0.10461255 0.29720718 
		4.9507236 0.29495445 0.2675851 4.9507236 0.50595003 0.39433864 4.8634963 0.68134105 
		0.46579888 4.8634963 0.83956355 0.57710081 4.8634963 0.96512967 0.71734935 4.8634963 
		1.045748 0.87281609 4.8634963 1.0735272 1.0282828 4.8634963 1.045748 1.1685313 4.8634963 
		0.96512955 1.2798332 4.8634963 0.83956343 1.3512933 4.8634963 0.68134099 1.3759168 
		4.8634963 0.50595003 1.3512933 4.8634963 0.3305591 1.2798331 4.8634963 0.17233667 
		1.1685313 4.8634963 0.046770636 1.0282828 4.8634963 -0.033847712 0.87281609 4.8634963 
		-0.061626885 0.71734947 4.8634963 -0.033847712 0.57710099 4.8634963 0.046770662 0.46579912 
		4.8634963 0.1723367 0.39433897 4.8634963 0.33055913 0.36971548 4.8634963 0.50595003 
		0.50325215 4.7933192 0.64141762 0.55844623 4.7933192 0.76362473 0.64441305 4.7933192 
		0.86060882 0.75273752 4.7933192 0.92287642 0.87281609 4.7933192 0.94433236 0.99289465 
		4.7933192 0.92287636 1.1012191 4.7933192 0.86060876 1.1871858 4.7933192 0.76362467 
		1.2423799 4.7933192 0.64141756 1.2613984 4.7933192 0.50595003 1.2423799 4.7933192 
		0.3704825 1.1871858 4.7933192 0.24827547;
	setAttr ".pt[332:381]" 1.1012191 4.7933192 0.15129143 0.99289465 4.7933192 
		0.089023843 0.87281609 4.7933192 0.067567907 0.75273758 4.7933192 0.089023873 0.64441317 
		4.7933192 0.15129144 0.55844647 4.7933192 0.2482755 0.50325239 4.7933192 0.37048253 
		0.48423386 4.7933192 0.50595003 0.62126559 4.7419209 0.59815854 0.65883446 4.7419209 
		0.68134105 0.71734935 4.7419209 0.74735504 0.79108238 4.7419209 0.78973866 0.87281609 
		4.7419209 0.80434304 0.95454979 4.7419209 0.78973866 1.0282828 4.7419209 0.74735498 
		1.0867976 4.7419209 0.68134099 1.1243665 4.7419209 0.59815854 1.1373118 4.7419209 
		0.50595003 1.1243665 4.7419209 0.41374156 1.0867976 4.7419209 0.3305591 1.0282828 
		4.7419209 0.26454511 0.95454973 4.7419209 0.22216155 0.87281609 4.7419209 0.20755719 
		0.79108244 4.7419209 0.22216158 0.71734947 4.7419209 0.26454514 0.65883464 4.7419209 
		0.33055913 0.62126577 4.7419209 0.41374159 0.60832042 4.7419209 0.50595003 0.74547303 
		4.710567 0.55262899 0.76449162 4.710567 0.59473872 0.79411376 4.710567 0.62815714 
		0.83143985 4.710567 0.64961308 0.87281609 4.710567 0.65700632 0.91419232 4.710567 
		0.64961308 0.95151842 4.710567 0.62815714 0.98114049 4.710567 0.59473866 1.000159 
		4.710567 0.55262899 1.0067124 4.710567 0.50595003 1.000159 4.710567 0.4592711 0.98114049 
		4.710567 0.41716143 0.95151836 4.710567 0.38374302 0.91419232 4.710567 0.36228707 
		0.87281609 4.710567 0.35489386 0.83143985 4.710567 0.36228707 0.79411381 4.710567 
		0.38374302 0.76449168 4.710567 0.41716143 0.74547309 4.710567 0.45927113 0.73891979 
		4.710567 0.50595003 0.87281609 6.4118805 0.50595003 0.87281609 4.7000289 0.50595003;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-009 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-009 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-008 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-008 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-008 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-008 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-008 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-008 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-008 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-008 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-008 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-008 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-008 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-008 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-008 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-008 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-008 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-009 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-009 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "rt_eye_render_mesh";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".t" -type "double3" 0.25407878225310121 -0.90733547314703233 1.0773961363302542 ;
	setAttr ".r" -type "double3" -7.4622920924936649 0.12576426329067486 2.7604188482443845 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".rp" -type "double3" -0.85781734958398626 5.5559548340092588 0.51995646529936446 ;
	setAttr ".rpt" -type "double3" -0.26801367495920753 -0.02733182250575493 -0.72409257052012832 ;
	setAttr ".sp" -type "double3" -0.85781734958398626 5.5559548340092597 0.51995646529936446 ;
	setAttr ".spt" -type "double3" 0 -8.8817841970012504e-016 0 ;
createNode mesh -n "rt_eye_render_meshShape" -p "rt_eye_render_mesh";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.175 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001 0 0.47499999
		 0 0.52500004 0 0.57499999 0 0.625 0 0.67500001 0 0.72500002 0 0.77500004 0 0.82499999
		 0 0.875 0 0.92500001 0 0.97500002 0 0.025 1 0.075000003 1 0.125 1 0.175 1 0.22500001
		 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47499999 1 0.52500004 1 0.57499999
		 1 0.625 1 0.67500001 1 0.72500002 1 0.77500004 1 0.82499999 1 0.875 1 0.92500001
		 1 0.97500002 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  -0.82514846 5.339077 0.51742345 -0.83002752 5.339077 0.51513839
		 -0.83762687 5.339077 0.51332498 -0.8472026 5.339077 0.51216066 -0.85781735 5.339077 0.51175946
		 -0.8684321 5.339077 0.51216066 -0.87800783 5.339077 0.51332498 -0.88560712 5.339077 0.51513839
		 -0.89048624 5.339077 0.51742345 -0.89216745 5.339077 0.51995647 -0.89048624 5.339077 0.52248949
		 -0.88560712 5.339077 0.52477455 -0.87800783 5.339077 0.52658796 -0.8684321 5.339077 0.52775228
		 -0.85781735 5.339077 0.52815348 -0.8472026 5.339077 0.52775228 -0.83762687 5.339077 0.52658796
		 -0.83002758 5.339077 0.52477455 -0.82514852 5.339077 0.52248949 -0.82346725 5.339077 0.51995647
		 -0.793284 5.34712076 0.51495284 -0.80292201 5.34712076 0.51043898 -0.81793356 5.34712076 0.50685674
		 -0.83684921 5.34712076 0.50455683 -0.85781735 5.34712076 0.50376433 -0.87878549 5.34712076 0.50455683
		 -0.89770114 5.34712076 0.50685674 -0.91271269 5.34712076 0.51043898 -0.92235065 5.34712076 0.51495284
		 -0.9256717 5.34712076 0.51995647 -0.92235065 5.34712076 0.5249601 -0.91271263 5.34712076 0.52947396
		 -0.89770114 5.34712076 0.5330562 -0.87878549 5.34712076 0.5353561 -0.85781735 5.34712076 0.53614861
		 -0.83684921 5.34712076 0.5353561 -0.81793356 5.34712076 0.5330562 -0.80292207 5.34712076 0.52947396
		 -0.79328406 5.34712076 0.5249601 -0.78996301 5.34712076 0.51995647 -0.76300859 5.36030674 0.51260537
		 -0.77716821 5.36030674 0.50597388 -0.79922229 5.36030674 0.50071108 -0.82701212 5.36030674 0.49733219
		 -0.85781735 5.36030674 0.49616787 -0.88862258 5.36030674 0.49733219 -0.91641235 5.36030674 0.50071108
		 -0.93846649 5.36030674 0.50597388 -0.95262611 5.36030674 0.51260537 -0.95750517 5.36030674 0.51995647
		 -0.95262611 5.36030674 0.52730757 -0.93846649 5.36030674 0.53393906 -0.91641235 5.36030674 0.53920186
		 -0.88862258 5.36030674 0.54258078 -0.85781735 5.36030674 0.54374504 -0.82701212 5.36030674 0.54258078
		 -0.79922235 5.36030674 0.53920186 -0.77716821 5.36030674 0.53393906 -0.76300865 5.36030674 0.52730757
		 -0.7581296 5.36030674 0.51995647 -0.73506767 5.3783102 0.51043898 -0.75340021 5.3783102 0.50185311
		 -0.78195387 5.3783102 0.49503931 -0.81793356 5.3783102 0.4906646 -0.85781735 5.3783102 0.48915717
		 -0.89770114 5.3783102 0.4906646 -0.93368083 5.3783102 0.49503931 -0.96223444 5.3783102 0.50185311
		 -0.98056698 5.3783102 0.51043898 -0.98688394 5.3783102 0.51995647 -0.98056698 5.3783102 0.52947396
		 -0.96223444 5.3783102 0.53805983 -0.93368077 5.3783102 0.5448736 -0.89770114 5.3783102 0.54924834
		 -0.85781735 5.3783102 0.55075574 -0.81793356 5.3783102 0.54924834 -0.78195393 5.3783102 0.5448736
		 -0.75340027 5.3783102 0.53805983 -0.73506773 5.3783102 0.52947396 -0.72875077 5.3783102 0.51995647
		 -0.71014923 5.40068769 0.50850689 -0.73220336 5.40068769 0.49817809 -0.76655346 5.40068769 0.48998109
		 -0.8098371 5.40068769 0.48471829 -0.85781735 5.40068769 0.48290488 -0.9057976 5.40068769 0.48471829
		 -0.94908124 5.40068769 0.48998109 -0.98343128 5.40068769 0.49817809 -1.0054854155 5.40068769 0.50850689
		 -1.013084769 5.40068769 0.51995647 -1.0054854155 5.40068769 0.53140604 -0.98343128 5.40068769 0.54173487
		 -0.94908124 5.40068769 0.54993182 -0.9057976 5.40068769 0.55519462 -0.85781735 5.40068769 0.55700803
		 -0.8098371 5.40068769 0.55519462 -0.76655352 5.40068769 0.54993182 -0.73220342 5.40068769 0.54173487
		 -0.71014935 5.40068769 0.53140604 -0.70254999 5.40068769 0.51995647 -0.68886691 5.42688847 0.50685674
		 -0.71409953 5.42688847 0.49503931 -0.75340021 5.42688847 0.48566094 -0.80292201 5.42688847 0.47963968
		 -0.85781735 5.42688847 0.4775649 -0.91271269 5.42688847 0.47963968 -0.96223444 5.42688847 0.48566097
		 -1.0015351772 5.42688847 0.49503931 -1.026767731 5.42688847 0.50685674 -1.03546226 5.42688847 0.51995647
		 -1.026767731 5.42688847 0.5330562 -1.0015351772 5.42688847 0.5448736 -0.96223444 5.42688847 0.55425197
		 -0.91271263 5.42688847 0.56027323 -0.85781735 5.42688847 0.56234807 -0.80292207 5.42688847 0.56027323
		 -0.75340027 5.42688847 0.55425197 -0.71409959 5.42688847 0.5448736 -0.68886697 5.42688847 0.5330562
		 -0.68017244 5.42688847 0.51995647 -0.67174464 5.45626736 0.50552917 -0.69953448 5.45626736 0.4925141
		 -0.74281812 5.45626736 0.48218527 -0.79735869 5.45626736 0.47555378 -0.85781735 5.45626736 0.47326872
		 -0.91827601 5.45626736 0.47555378 -0.97281659 5.45626736 0.4821853 -1.016100168 5.45626736 0.4925141
		 -1.043889999 5.45626736 0.50552917 -1.053465724 5.45626736 0.51995647 -1.043889999 5.45626736 0.53438377
		 -1.016100168 5.45626736 0.54739881 -0.97281653 5.45626736 0.55772763 -0.91827601 5.45626736 0.56435913
		 -0.85781735 5.45626736 0.56664419 -0.79735869 5.45626736 0.56435913 -0.74281818 5.45626736 0.55772763
		 -0.6995346 5.45626736 0.54739881 -0.67174476 5.45626736 0.53438377 -0.6621691 5.45626736 0.51995647
		 -0.65920419 5.48810053 0.50455683 -0.68886691 5.48810053 0.4906646 -0.73506767 5.48810053 0.47963968
		 -0.793284 5.48810053 0.47256124 -0.85781735 5.48810053 0.47012216 -0.9223507 5.48810053 0.47256124
		 -0.98056704 5.48810053 0.47963968 -1.026767731 5.48810053 0.4906646 -1.056430459 5.48810053 0.50455683
		 -1.066651583 5.48810053 0.51995647 -1.056430459 5.48810053 0.5353561 -1.026767731 5.48810053 0.54924834
		 -0.98056698 5.48810053 0.56027323 -0.92235065 5.48810053 0.5673517 -0.85781735 5.48810053 0.56979072
		 -0.79328406 5.48810053 0.5673517 -0.73506773 5.48810053 0.56027323 -0.68886697 5.48810053 0.54924834
		 -0.6592043 5.48810053 0.5353561 -0.64898324 5.48810053 0.51995647 -0.65155417 5.52160501 0.50396365
		 -0.6823594 5.52160501 0.48953637 -0.73033971 5.52160501 0.4780868 -0.79079843 5.52160501 0.47073573
		 -0.85781735 5.52160501 0.46820271 -0.92483628 5.52160501 0.47073573;
	setAttr ".vt[166:331]" -0.98529494 5.52160501 0.4780868 -1.033275247 5.52160501 0.48953637
		 -1.064080477 5.52160501 0.50396371 -1.07469523 5.52160501 0.51995647 -1.064080477 5.52160501 0.53594923
		 -1.033275247 5.52160501 0.55037653 -0.98529494 5.52160501 0.56182611 -0.92483628 5.52160501 0.56917721
		 -0.85781735 5.52160501 0.57171023 -0.79079843 5.52160501 0.56917721 -0.73033977 5.52160501 0.56182611
		 -0.68235952 5.52160501 0.55037653 -0.65155429 5.52160501 0.53594923 -0.64093959 5.52160501 0.51995647
		 -0.64898312 5.55595493 0.50376433 -0.68017232 5.55595493 0.48915717 -0.72875071 5.55595493 0.47756487
		 -0.78996301 5.55595493 0.47012216 -0.85781735 5.55595493 0.46755758 -0.9256717 5.55595493 0.47012219
		 -0.986884 5.55595493 0.4775649 -1.03546226 5.55595493 0.4891572 -1.066651583 5.55595493 0.50376433
		 -1.077398539 5.55595493 0.51995647 -1.066651583 5.55595493 0.53614861 -1.03546226 5.55595493 0.55075574
		 -0.98688394 5.55595493 0.56234807 -0.9256717 5.55595493 0.56979072 -0.85781735 5.55595493 0.57235533
		 -0.78996307 5.55595493 0.56979072 -0.72875077 5.55595493 0.56234801 -0.68017244 5.55595493 0.55075574
		 -0.64898324 5.55595493 0.53614861 -0.63823617 5.55595493 0.51995647 -0.65155417 5.59030485 0.50396365
		 -0.6823594 5.59030485 0.48953637 -0.73033971 5.59030485 0.4780868 -0.79079843 5.59030485 0.47073573
		 -0.85781735 5.59030485 0.46820271 -0.92483628 5.59030485 0.47073573 -0.98529494 5.59030485 0.4780868
		 -1.033275247 5.59030485 0.48953637 -1.064080477 5.59030485 0.50396371 -1.07469523 5.59030485 0.51995647
		 -1.064080477 5.59030485 0.53594923 -1.033275247 5.59030485 0.55037653 -0.98529494 5.59030485 0.56182611
		 -0.92483628 5.59030485 0.56917721 -0.85781735 5.59030485 0.57171023 -0.79079843 5.59030485 0.56917721
		 -0.73033977 5.59030485 0.56182611 -0.68235952 5.59030485 0.55037653 -0.65155429 5.59030485 0.53594923
		 -0.64093959 5.59030485 0.51995647 -0.65920419 5.62380934 0.50455683 -0.68886691 5.62380934 0.4906646
		 -0.73506767 5.62380934 0.47963968 -0.793284 5.62380934 0.47256124 -0.85781735 5.62380934 0.47012216
		 -0.9223507 5.62380934 0.47256124 -0.98056704 5.62380934 0.47963968 -1.026767731 5.62380934 0.4906646
		 -1.056430459 5.62380934 0.50455683 -1.066651583 5.62380934 0.51995647 -1.056430459 5.62380934 0.5353561
		 -1.026767731 5.62380934 0.54924834 -0.98056698 5.62380934 0.56027323 -0.92235065 5.62380934 0.5673517
		 -0.85781735 5.62380934 0.56979072 -0.79328406 5.62380934 0.5673517 -0.73506773 5.62380934 0.56027323
		 -0.68886697 5.62380934 0.54924834 -0.6592043 5.62380934 0.5353561 -0.64898324 5.62380934 0.51995647
		 -0.67174464 5.65564251 0.50552917 -0.69953448 5.65564251 0.4925141 -0.74281812 5.65564251 0.48218527
		 -0.79735869 5.65564251 0.47555378 -0.85781735 5.65564251 0.47326872 -0.91827601 5.65564251 0.47555378
		 -0.97281659 5.65564251 0.4821853 -1.016100168 5.65564251 0.4925141 -1.043889999 5.65564251 0.50552917
		 -1.053465724 5.65564251 0.51995647 -1.043889999 5.65564251 0.53438377 -1.016100168 5.65564251 0.54739881
		 -0.97281653 5.65564251 0.55772763 -0.91827601 5.65564251 0.56435913 -0.85781735 5.65564251 0.56664419
		 -0.79735869 5.65564251 0.56435913 -0.74281818 5.65564251 0.55772763 -0.6995346 5.65564251 0.54739881
		 -0.67174476 5.65564251 0.53438377 -0.6621691 5.65564251 0.51995647 -0.68886691 5.6850214 0.50685674
		 -0.71409953 5.6850214 0.49503931 -0.75340021 5.6850214 0.48566094 -0.80292201 5.6850214 0.47963968
		 -0.85781735 5.6850214 0.4775649 -0.91271269 5.6850214 0.47963968 -0.96223444 5.6850214 0.48566097
		 -1.0015351772 5.6850214 0.49503931 -1.026767731 5.6850214 0.50685674 -1.03546226 5.6850214 0.51995647
		 -1.026767731 5.6850214 0.5330562 -1.0015351772 5.6850214 0.5448736 -0.96223444 5.6850214 0.55425197
		 -0.91271263 5.6850214 0.56027323 -0.85781735 5.6850214 0.56234807 -0.80292207 5.6850214 0.56027323
		 -0.75340027 5.6850214 0.55425197 -0.71409959 5.6850214 0.5448736 -0.68886697 5.6850214 0.5330562
		 -0.68017244 5.6850214 0.51995647 -0.71014923 5.71122217 0.50850689 -0.73220336 5.71122217 0.49817809
		 -0.76655346 5.71122217 0.48998109 -0.8098371 5.71122217 0.48471829 -0.85781735 5.71122217 0.48290488
		 -0.9057976 5.71122217 0.48471829 -0.94908124 5.71122217 0.48998109 -0.98343128 5.71122217 0.49817809
		 -1.0054854155 5.71122217 0.50850689 -1.013084769 5.71122217 0.51995647 -1.0054854155 5.71122217 0.53140604
		 -0.98343128 5.71122217 0.54173487 -0.94908124 5.71122217 0.54993182 -0.9057976 5.71122217 0.55519462
		 -0.85781735 5.71122217 0.55700803 -0.8098371 5.71122217 0.55519462 -0.76655352 5.71122217 0.54993182
		 -0.73220342 5.71122217 0.54173487 -0.71014935 5.71122217 0.53140604 -0.70254999 5.71122217 0.51995647
		 -0.73506767 5.73359966 0.51043898 -0.75340021 5.73359966 0.50185311 -0.78195387 5.73359966 0.49503931
		 -0.81793356 5.73359966 0.4906646 -0.85781735 5.73359966 0.48915717 -0.89770114 5.73359966 0.4906646
		 -0.93368083 5.73359966 0.49503931 -0.96223444 5.73359966 0.50185311 -0.98056698 5.73359966 0.51043898
		 -0.98688394 5.73359966 0.51995647 -0.98056698 5.73359966 0.52947396 -0.96223444 5.73359966 0.53805983
		 -0.93368077 5.73359966 0.5448736 -0.89770114 5.73359966 0.54924834 -0.85781735 5.73359966 0.55075574
		 -0.81793356 5.73359966 0.54924834 -0.78195393 5.73359966 0.5448736 -0.75340027 5.73359966 0.53805983
		 -0.73506773 5.73359966 0.52947396 -0.72875077 5.73359966 0.51995647 -0.76300859 5.75160313 0.51260537
		 -0.77716821 5.75160313 0.50597388 -0.79922229 5.75160313 0.50071108 -0.82701212 5.75160313 0.49733219
		 -0.85781735 5.75160313 0.49616787 -0.88862258 5.75160313 0.49733219 -0.91641235 5.75160313 0.50071108
		 -0.93846649 5.75160313 0.50597388 -0.95262611 5.75160313 0.51260537 -0.95750517 5.75160313 0.51995647
		 -0.95262611 5.75160313 0.52730757 -0.93846649 5.75160313 0.53393906;
	setAttr ".vt[332:381]" -0.91641235 5.75160313 0.53920186 -0.88862258 5.75160313 0.54258078
		 -0.85781735 5.75160313 0.54374504 -0.82701212 5.75160313 0.54258078 -0.79922235 5.75160313 0.53920186
		 -0.77716821 5.75160313 0.53393906 -0.76300865 5.75160313 0.52730757 -0.7581296 5.75160313 0.51995647
		 -0.793284 5.7647891 0.51495284 -0.80292201 5.7647891 0.51043898 -0.81793356 5.7647891 0.50685674
		 -0.83684921 5.7647891 0.50455683 -0.85781735 5.7647891 0.50376433 -0.87878549 5.7647891 0.50455683
		 -0.89770114 5.7647891 0.50685674 -0.91271269 5.7647891 0.51043898 -0.92235065 5.7647891 0.51495284
		 -0.9256717 5.7647891 0.51995647 -0.92235065 5.7647891 0.5249601 -0.91271263 5.7647891 0.52947396
		 -0.89770114 5.7647891 0.5330562 -0.87878549 5.7647891 0.5353561 -0.85781735 5.7647891 0.53614861
		 -0.83684921 5.7647891 0.5353561 -0.81793356 5.7647891 0.5330562 -0.80292207 5.7647891 0.52947396
		 -0.79328406 5.7647891 0.5249601 -0.78996301 5.7647891 0.51995647 -0.82514846 5.77283287 0.51742345
		 -0.83002752 5.77283287 0.51513839 -0.83762687 5.77283287 0.51332498 -0.8472026 5.77283287 0.51216066
		 -0.85781735 5.77283287 0.51175946 -0.8684321 5.77283287 0.51216066 -0.87800783 5.77283287 0.51332498
		 -0.88560712 5.77283287 0.51513839 -0.89048624 5.77283287 0.51742345 -0.89216745 5.77283287 0.51995647
		 -0.89048624 5.77283287 0.52248949 -0.88560712 5.77283287 0.52477455 -0.87800783 5.77283287 0.52658796
		 -0.8684321 5.77283287 0.52775228 -0.85781735 5.77283287 0.52815348 -0.8472026 5.77283287 0.52775228
		 -0.83762687 5.77283287 0.52658796 -0.83002758 5.77283287 0.52477455 -0.82514852 5.77283287 0.52248949
		 -0.82346725 5.77283287 0.51995647 -0.85781735 5.33637381 0.51995647 -0.85781735 5.77553606 0.51995647;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "body_mat";
	setAttr ".dc" 0.20000000298023224;
	setAttr ".c" -type "float3" 0.1 0.1 0.1 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 11 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".anf" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 0.5\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 0.5\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 21 100 -ps 2 79 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0.5 -max 12 -ast 0.5 -aet 24 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -cb on ".ren";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -k on ".outf" 19;
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -k on ".an" yes;
	setAttr -cb on ".ar";
	setAttr ".fs" 1;
	setAttr ".ef" 48;
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep" 3;
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff" yes;
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp" -type "string" "lurpy2_TEST_wobbleNew";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr ".mb" yes;
	setAttr -av -k on ".mbf" 2;
	setAttr ".mbus" yes;
	setAttr ".mbsc" 0.69999998807907104;
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll" 0.56074768304824829;
	setAttr -k on ".bls" 0.098039209842681885;
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt" 0;
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultRenderQuality;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".rfl" 10;
	setAttr ".rfr" 10;
	setAttr ".sl" 10;
	setAttr ".eaa" 0;
	setAttr ".ufil" yes;
	setAttr ".pft" 5;
	setAttr ".pfwx" 3;
	setAttr ".pfwy" 3;
	setAttr ".ss" 2;
	setAttr -av ".mss";
	setAttr -k on ".mvs";
	setAttr -k on ".mvm";
	setAttr -k on ".vs";
	setAttr -k on ".pss";
	setAttr -k on ".rct" 0.20000000298023224;
	setAttr -k on ".gct" 0.15000000596046448;
	setAttr -k on ".bct" 0.30000001192092896;
	setAttr -k on ".cct";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w" 1280;
	setAttr -av ".h" 720;
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al" yes;
	setAttr -av ".dar" 1.7769999504089355;
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "body_mat.msg" "materialInfo1.m";
connectAttr "body_mat.oc" "lambert2SG.ss";
connectAttr "lf_arm_render_meshShape.iog" "lambert2SG.dsm" -na;
connectAttr "rt_arm_render_meshShape.iog" "lambert2SG.dsm" -na;
connectAttr "cn_body_render_meshShape.iog" "lambert2SG.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr ":persp.msg" "hyperLayout1.hyp[0].dn";
connectAttr ":perspShape.msg" "hyperLayout1.hyp[1].dn";
connectAttr ":top.msg" "hyperLayout1.hyp[2].dn";
connectAttr ":topShape.msg" "hyperLayout1.hyp[3].dn";
connectAttr ":front.msg" "hyperLayout1.hyp[4].dn";
connectAttr ":frontShape.msg" "hyperLayout1.hyp[5].dn";
connectAttr ":side.msg" "hyperLayout1.hyp[6].dn";
connectAttr ":sideShape.msg" "hyperLayout1.hyp[7].dn";
connectAttr "layerManager.msg" "hyperLayout1.hyp[8].dn";
connectAttr "defaultLayer.msg" "hyperLayout1.hyp[9].dn";
connectAttr "defaultRenderLayer.msg" "hyperLayout1.hyp[10].dn";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "body_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of char9_geo.ma
