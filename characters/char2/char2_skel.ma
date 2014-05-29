//Maya ASCII 2014 scene
//Name: char2_skel.ma
//Last modified: Thu, May 29, 2014 07:40:56 PM
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
currentUnit -linear centimeter -angle degree -time film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -shared -name "persp";
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" 14.517550786677178 7.740155585497253 13.214079860490113 ;
	setAttr ".rotate" -type "double3" -10.538352729206736 50.600000000000598 0 ;
createNode camera -shared -name "perspShape" -parent "persp";
	setAttr -keyable off ".visibility" no;
	setAttr ".focalLength" 34.999999999999986;
	setAttr ".centerOfInterest" 20.061605425341735;
	setAttr ".imageName" -type "string" "persp";
	setAttr ".depthName" -type "string" "persp_depth";
	setAttr ".maskName" -type "string" "persp_mask";
	setAttr ".tumblePivot" -type "double3" 0.5787784527951223 0.019919706376903212 0.57067841291427601 ;
	setAttr ".homeCommand" -type "string" "viewSet -p %camera";
createNode transform -shared -name "top";
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" 0 100.1 0 ;
	setAttr ".rotate" -type "double3" -89.999999999999986 0 0 ;
createNode camera -shared -name "topShape" -parent "top";
	setAttr -keyable off ".visibility" no;
	setAttr ".renderable" no;
	setAttr ".centerOfInterest" 100.1;
	setAttr ".orthographicWidth" 30;
	setAttr ".imageName" -type "string" "top";
	setAttr ".depthName" -type "string" "top_depth";
	setAttr ".maskName" -type "string" "top_mask";
	setAttr ".homeCommand" -type "string" "viewSet -t %camera";
	setAttr ".orthographic" yes;
createNode transform -shared -name "front";
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" 0.015636758275736656 7.4185678306270333 100.1 ;
createNode camera -shared -name "frontShape" -parent "front";
	setAttr -keyable off ".visibility" no;
	setAttr ".renderable" no;
	setAttr ".centerOfInterest" 100.1;
	setAttr ".orthographicWidth" 26.492656883997089;
	setAttr ".imageName" -type "string" "front";
	setAttr ".depthName" -type "string" "front_depth";
	setAttr ".maskName" -type "string" "front_mask";
	setAttr ".homeCommand" -type "string" "viewSet -f %camera";
	setAttr ".orthographic" yes;
createNode transform -shared -name "side";
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" 100.1 0 0 ;
	setAttr ".rotate" -type "double3" 0 89.999999999999986 0 ;
createNode camera -shared -name "sideShape" -parent "side";
	setAttr -keyable off ".visibility" no;
	setAttr ".renderable" no;
	setAttr ".centerOfInterest" 100.1;
	setAttr ".orthographicWidth" 30;
	setAttr ".imageName" -type "string" "side";
	setAttr ".depthName" -type "string" "side_depth";
	setAttr ".maskName" -type "string" "side_mask";
	setAttr ".homeCommand" -type "string" "viewSet -s %camera";
	setAttr ".orthographic" yes;
createNode joint -name "cn_spine_01_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 14;
	setAttr ".translate" -type "double3" -1.8321761386712505e-017 3.86085 9.4582461178387497e-049 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9721522630525365e-031 4.2530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_02_defJnt" -parent "cn_spine_01_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 1.1102230246251563e-016 1.3596310734468913e-032 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9721522630525365e-031 4.2530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_03_defJnt" -parent "cn_spine_02_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 2.0294579719360151e-016 -6.1232339957367648e-017 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9098807731429896e-017 4.7530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_04_defJnt" -parent "cn_spine_03_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 1.0911242168937274e-015 6.1232339957367648e-017 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.4998080423726618e-016 5.2530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_05_defJnt" -parent "cn_spine_04_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 -6.8523262250652409e-016 6.1232339957367648e-017 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.7296423194289122e-017 5.7530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_06_defJnt" -parent "cn_spine_05_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 1.0911242168937276e-015 6.1232339957367648e-017 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.1178318877440693e-016 6.2530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_07_defJnt" -parent "cn_spine_06_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 -6.8523262250652488e-016 6.1232339957367623e-017 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.5494038657148791e-017 6.7530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_08_defJnt" -parent "cn_spine_07_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 1.0911242168937272e-015 6.1232339957367722e-017 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.7358557331154689e-016 7.2530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_09_defJnt" -parent "cn_spine_08_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 -6.8523262250652409e-016 6.1232339957367623e-017 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3369165412000831e-016 7.7530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_10_defJnt" -parent "cn_spine_09_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 2.029457971936019e-016 6.1232339957367525e-017 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5279046185143791e-016 8.2530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "cn_spine_11_defJnt" -parent "cn_spine_10_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".translate" -type "double3" 0.5 2.0294579719360151e-016 6.1232339957367673e-017 ;
	setAttr ".rotateOrder" 1;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "yzx";
	setAttr ".bindPose" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5279046185143791e-016 8.2530000000000001 0 1;
	setAttr ".radius" 0.5;
createNode joint -name "rt_head_eye_defJnt" -parent "cn_spine_10_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" 0.049899882621135205 -0.45537307908882657 -0.49477690458297774 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 -7.016709298534876e-015 0 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_head_eye_defJnt" -parent "cn_spine_10_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" -0.0011753445759250525 0.56014902108458342 
		-0.49477690458297757 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 -7.016709298534876e-015 0 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_shoulder_1_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.86605055351034754 6.8396820657045829 -0.0564383816042653 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_shoulder_2_defJnt" -parent "lf_shoulder_1_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.43013575420858263 0 6.9388939039072284e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_shoulder_3_defJnt" -parent "lf_shoulder_2_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.43013575420858263 0 -1.3877787807814457e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_shoulder_4_defJnt" -parent "lf_shoulder_3_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.43013575420858285 8.8817841970012523e-016 
		0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_shoulder_5_defJnt" -parent "lf_shoulder_4_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.43013575420858213 -8.8817841970012523e-016 
		0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_arm_1_defJnt" -parent "lf_shoulder_5_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.43013575420858263 0 6.9388939039072284e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_arm_2_defJnt" -parent "lf_arm_1_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.37996698161573184 0 6.9388939039072284e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_arm_3_defJnt" -parent "lf_arm_2_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.37996698161573272 0 -6.9388939039072284e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_arm_4_defJnt" -parent "lf_arm_3_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.37996698161573234 8.8817841970012523e-016 
		-6.9388939039072284e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_arm_5_defJnt" -parent "lf_arm_4_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.37996698161573134 -8.8817841970012523e-016 
		0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_defJnt" -parent "lf_arm_5_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.37996698161573234 0 6.9388939039072284e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_end_defJnt" -parent "lf_hand_defJnt";
	setAttr ".translate" -type "double3" 0.99999999999999489 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_root_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 4.916081838386857 6.83965 -0.056440490047976861 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 1.8830863036921934 6.4083771279308914 16.413246177511862 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "root";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_pinky1_defJnt" -parent "lf_hand_root_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.44905126091522546 5.6781379417435743e-017 
		-4.9035167052392402e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 9.3894758437758654e-006 4.6447227982446293 
		-16.307701802851444 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinky1";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_pinkyExtend2_defJnt" -parent "lf_hand_pinky1_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 1;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.73800547714837395 -2.7732239184349906e-016 
		-1.0179622078459163e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinkyExtend2";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_pinky2_defJnt" -parent "lf_hand_pinkyExtend2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 1;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" -8.8818067920530867e-016 -9.4188857298159571e-016 
		-3.145123748286652e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0.00017212451822577629 -0.00084837080548127314 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinky2";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_pinkyExtend3_defJnt" -parent "lf_hand_pinky2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 2;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.56199549416699013 7.4172548834875287e-013 
		1.5075285785683885e-013 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinkyExtend3";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_pinky3_defJnt" -parent "lf_hand_pinkyExtend3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 2;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" -8.8818862383221449e-016 8.4801992973632959e-016 
		-3.4497649816091144e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 3.7026529683355361e-025 -0.00022336818504197086 
		0.0013471646102409913 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinky3";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_pinkyExtend4_defJnt" -parent "lf_hand_pinky3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 3;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.36000009444443126 1.312131016153315e-012 
		2.1732780438781961e-013 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinkyExtend4";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_pinky4_defJnt" -parent "lf_hand_pinkyExtend4_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 3;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" -8.8815324902971021e-016 2.544103391656672e-015 
		-1.0349227266786281e-015 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0.00011675561008420603 -0.00061436520327520544 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinky4";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_pinky5_defJnt" -parent "lf_hand_pinky4_defJnt";
	setAttr ".translate" -type "double3" 0.28 -1.3539511708276644e-012 -2.5723035641385796e-013 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_mid1_defJnt" -parent "lf_hand_root_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.4544582787570442 -0.009688057748366518 0.071146192702649588 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -0.2874276606015117 -7.1498475722728569 -13.999738175878694 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "mid1";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_midExtend2_defJnt" -parent "lf_hand_mid1_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.74999537907805836 1.2709142603351044e-016 
		-4.0598590025506755e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "midExtend2";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_mid2_defJnt" -parent "lf_hand_midExtend2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" -1.7763661779544281e-015 -2.6507613779773881e-015 
		2.9241244563154711e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "mid2";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_midExtend3_defJnt" -parent "lf_hand_mid2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.58000413104322457 -5.2529238070627302e-006 
		-1.1278710400156906e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "midExtend3";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_mid3_defJnt" -parent "lf_hand_midExtend3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" -8.8817544322246761e-016 8.444931686729749e-016 
		-3.5355521087884971e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 -3.0687950357417989e-006 0.00084061335770773554 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "mid3";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_midExtend4_defJnt" -parent "lf_hand_mid3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.37000017371784694 1.04614050540237e-012 3.8159043169455333e-015 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "midExtend4";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_mid4_defJnt" -parent "lf_hand_midExtend4_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 1.7763881543489618e-015 1.7224613368373734e-015 
		-4.8760959438212945e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 2.76907848864288e-006 -0.0010424312186610998 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "mid4";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_mid5_defJnt" -parent "lf_hand_mid4_defJnt";
	setAttr ".translate" -type "double3" 0.28000000000000008 -8.8083575202188305e-013 
		-2.3357335453496515e-015 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_index1_defJnt" -parent "lf_hand_root_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.46154988961819166 -0.011762840289202253 0.14493603717200937 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -1.6397709128360385 -19.702214578934029 -11.454243418445811 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "index1";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_indexExtend2_defJnt" -parent "lf_hand_index1_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.74999678788128477 1.2420234044308085e-015 
		1.0156116580062251e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "indexExtend2";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_index2_defJnt" -parent "lf_hand_indexExtend2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 2.1841182708951181e-022 1.4758262176284469e-017 
		1.1003701805104799e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0.00014712386048547994 -0.00056493898149890284 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "index2";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_indexExtend3_defJnt" -parent "lf_hand_index2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.56000201412584183 5.6917931895514454e-013 
		1.4815983347920109e-013 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "indexExtend3";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_index3_defJnt" -parent "lf_hand_indexExtend3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" -4.1931579293052243e-022 2.9516524355441248e-017 
		2.2007403610174482e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0 0.001063997230627831 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "index3";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_indexExtend4_defJnt" -parent "lf_hand_index3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.34999784619479907 4.1637795971506091e-014 
		6.0215508268917674e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "indexExtend4";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_index4_defJnt" -parent "lf_hand_indexExtend4_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" -8.8817832175924755e-016 2.214735233787823e-017 
		1.6505471808323593e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 -5.2187562430815449e-005 -0.00064245241039903253 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "index4";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_index5_defJnt" -parent "lf_hand_index4_defJnt";
	setAttr ".translate" -type "double3" 0.28 -1.4894875992071136e-012 1.2074403687221061e-013 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_thumb1_defJnt" -parent "lf_hand_root_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.13533995819501363 -0.023808485010991885 0.17349992327110489 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 74.314 -39.488 -7.7606162076025349 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumb1";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_thumbExtend2_defJnt" -parent "lf_hand_thumb1_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.74999661260329198 1.4089003560304297e-015 
		1.3134782351531965e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumbExtend2";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_thumb2_defJnt" -parent "lf_hand_thumbExtend2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" -8.8818409119851304e-016 7.1286689326208071e-016 
		-1.0341820576164418e-015 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0 8 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumb2";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_thumbExtend3_defJnt" -parent "lf_hand_thumb2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.37999683405128609 -1.133079124484995e-016 
		8.6307408322174501e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumbExtend3";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_thumb3_defJnt" -parent "lf_hand_thumbExtend3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 8.8817206295486116e-016 -9.4980305821093389e-016 
		-2.897612361012776e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 0 -0.00021540896608391311 ;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumb3";
	setAttr ".radius" 0.5;
createNode joint -name "lf_hand_thumb4_defJnt" -parent "lf_hand_thumb3_defJnt";
	setAttr ".translate" -type "double3" 0.4000000000000003 -9.4115382229714804e-013 
		-2.4089431199328424e-012 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_shoulder_1_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.866051 6.83968 -0.0564384 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -180 0 0 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_shoulder_2_defJnt" -parent "rt_shoulder_1_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.43013899999999994 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_shoulder_3_defJnt" -parent "rt_shoulder_2_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.43013000000000018 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_shoulder_4_defJnt" -parent "rt_shoulder_3_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.43014 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_shoulder_5_defJnt" -parent "rt_shoulder_4_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.43013000000000018 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_arm_1_defJnt" -parent "rt_shoulder_5_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.43013999999999974 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_arm_2_defJnt" -parent "rt_arm_1_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.37997000000000014 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_arm_3_defJnt" -parent "rt_arm_2_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.37996000000000008 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_arm_4_defJnt" -parent "rt_arm_3_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.3799699999999997 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_arm_5_defJnt" -parent "rt_arm_4_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.37997000000000014 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_defJnt" -parent "rt_arm_5_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.37995999999999958 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_end_defJnt" -parent "rt_hand_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -1 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_leg_1_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.57877845279512197 3.8608499679954393 1.0592776742571901e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".jointOrient" -type "double3" 90 0 -89.999999999999972 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_leg_2_defJnt" -parent "lf_leg_1_defJnt";
	setAttr ".translate" -type "double3" 0.46514603717616099 2.5820792014306148e-017 
		-6.7119852839194408e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "lf_leg_3_defJnt" -parent "lf_leg_2_defJnt";
	setAttr ".translate" -type "double3" 0.4651460371761611 1.0328316805722464e-016 
		4.3902449623321295e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "lf_leg_4_defJnt" -parent "lf_leg_3_defJnt";
	setAttr ".translate" -type "double3" 0.46514603717616154 1.0328316805722475e-016 
		-6.7119852839194248e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "lf_knee_1_defJnt" -parent "lf_leg_4_defJnt";
	setAttr ".translate" -type "double3" 0.4651460371761611 1.0328316805722464e-016 
		-6.7119852839194383e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "lf_knee_2_defJnt" -parent "lf_knee_1_defJnt";
	setAttr ".translate" -type "double3" 0.32786362246936251 7.2800348520499242e-017 
		-1.8217796817668035e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "lf_knee_3_defJnt" -parent "lf_knee_2_defJnt";
	setAttr ".translate" -type "double3" 0.32786362246936251 7.2800348520499242e-017 
		1.0920052278074884e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "lf_knee_4_defJnt" -parent "lf_knee_3_defJnt";
	setAttr ".translate" -type "double3" 0.32786362246936251 7.2800348520499242e-017 
		-1.8217796817668035e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "lf_foot_defJnt" -parent "lf_knee_4_defJnt";
	setAttr ".translate" -type "double3" 0.32786362246936251 7.2800348520499242e-017 
		-1.8217796817668035e-018 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "lf_foot_end_defJnt" -parent "lf_foot_defJnt";
	setAttr ".translate" -type "double3" 0.68828324607288316 0 3.3306690738754696e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_leg_1_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.578778 3.86085 1.0592800000000001e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".jointOrient" -type "double3" -90.000000000000028 6.3611093629270335e-015 
		89.999999999999986 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_leg_2_defJnt" -parent "rt_leg_1_defJnt";
	setAttr ".translate" -type "double3" -0.4651499999999999 -2.5821023990439017e-017 
		-2.2204460492503131e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "rt_leg_3_defJnt" -parent "rt_leg_2_defJnt";
	setAttr ".translate" -type "double3" -0.46514000000000033 -1.0328291376741448e-016 
		0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "rt_leg_4_defJnt" -parent "rt_leg_3_defJnt";
	setAttr ".translate" -type "double3" -0.4651499999999999 -1.032830239904392e-016 
		-2.2204460492503131e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "rt_knee_1_defJnt" -parent "rt_leg_4_defJnt";
	setAttr ".translate" -type "double3" -0.46513999999999994 -1.0328291376741443e-016 
		0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "rt_knee_2_defJnt" -parent "rt_knee_1_defJnt";
	setAttr ".translate" -type "double3" -0.32787000000000011 -7.2800882308384955e-017 
		-1.1102230246251563e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "rt_knee_3_defJnt" -parent "rt_knee_2_defJnt";
	setAttr ".translate" -type "double3" -0.32785999999999982 -7.2799772085360224e-017 
		-1.1102230246251563e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "rt_knee_4_defJnt" -parent "rt_knee_3_defJnt";
	setAttr ".translate" -type "double3" -0.32787000000000011 -7.2800882308385054e-017 
		-1.1102230246251563e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "rt_foot_defJnt" -parent "rt_knee_4_defJnt";
	setAttr ".translate" -type "double3" -0.3278589999999999 -7.2799661063057795e-017 
		-1.1102230246251563e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrientType" -type "string" "xzy";
	setAttr ".radius" 0.5;
createNode joint -name "rt_foot_end_defJnt" -parent "rt_foot_defJnt";
	setAttr ".translate" -type "double3" -0.68828291700000011 -7.5419095644562573e-022 
		-2.2204460492503131e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_root_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -4.91608 6.83965 -0.056440499999999998 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -178.11691369630782 -6.4083771279308914 -16.413246177511855 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "root";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_pinky1_defJnt" -parent "rt_hand_root_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.44905023796308985 2.3541183695741097e-006 
		2.7537304325697676e-008 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 9.3894736533303883e-006 4.6447227982446302 
		-16.307701802851465 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinky1";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_pinkyExtend2_defJnt" -parent "rt_hand_pinky1_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 1;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.73800445106973633 1.4886333978836319e-006 
		2.054572970644486e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinkyExtend2";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_pinky2_defJnt" -parent "rt_hand_pinkyExtend2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 1;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" 0 -1.7763568394002505e-015 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 8.5249933409967853e-007 0.00017212451822694596 
		-0.00084837080548103559 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinky2";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_pinkyExtend3_defJnt" -parent "rt_hand_pinky2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 2;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.56199884447990467 -7.1878289773508186e-006 
		-7.6550093774940819e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinkyExtend3";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_pinky3_defJnt" -parent "rt_hand_pinkyExtend3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 2;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -2.6259675364683296e-009 -0.00022336818504155447 
		0.0013471646102410602 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinky3";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_pinkyExtend4_defJnt" -parent "rt_hand_pinky3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 3;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.3599970627770519 3.8601406640026426e-006 
		9.9735160963287939e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinkyExtend4";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_pinky4_defJnt" -parent "rt_hand_pinkyExtend4_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".useObjectColor" yes;
	setAttr ".objectColor" 3;
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" 0 8.8817841970012523e-016 -1.1102230246251563e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -6.2596743366443947e-010 0.00011675561008352965 
		-0.00061436520327533392 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinky4";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_pinky5_defJnt" -parent "rt_hand_pinky4_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.27999991629460386 1.3526957332032907e-012 
		-1.2221514444910042e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "pinky5";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_mid1_defJnt" -parent "rt_hand_root_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.45445725580490848 0.00969041186673536 -0.071146165165345332 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -0.28742766060088631 -7.1498475722728543 
		-13.999738175878688 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "mid1";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_midExtend2_defJnt" -parent "rt_hand_mid1_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.74999505520912901 -5.4717144681859509e-007 
		-2.8785183958657257e-009 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 8.5377364625159387e-007 -2.6826480150310026e-022 
		8.2939424491357116e-023 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "midExtend2";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_mid2_defJnt" -parent "rt_hand_midExtend2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" 1.7763568394002505e-015 0 -1.3877787807814457e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 8.5377364625159387e-007 -2.6826480150310026e-022 
		8.2939424491357116e-023 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "mid2";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_midExtend3_defJnt" -parent "rt_hand_mid2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.58000309798129202 6.6591087017897621e-006 
		9.6428032628215199e-008 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 8.5377364625159387e-007 -2.6826480150310026e-022 
		8.2939424491357116e-023 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "midExtend3";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_mid3_defJnt" -parent "rt_hand_midExtend3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -8.8817841970012523e-016 8.8817841970012523e-016 
		1.3877787807814457e-017 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 8.537511343831316e-007 -3.0687950411415209e-006 
		0.0008406133577077157 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "mid3";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_midExtend4_defJnt" -parent "rt_hand_mid3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.37000854361413538 7.9402183139620764e-007 
		8.3048491750226106e-008 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "midExtend4";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_mid4_defJnt" -parent "rt_hand_midExtend4_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -2.5190109009047418e-011 2.7690784884720466e-006 
		-0.0010424312186611004 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "mid4";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_mid5_defJnt" -parent "rt_hand_mid4_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.27999340573366371 -2.5813691211240553e-006 
		-2.0936479536159961e-008 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "mid5";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_index1_defJnt" -parent "rt_hand_root_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.46154886666605582 0.0117651944075714 -0.1449360096347051 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -1.6397709128360392 -19.702214578934019 -11.454243418445808 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "index1";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_indexExtend2_defJnt" -parent "rt_hand_index1_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.74999773664856229 2.0670288209956311e-006 
		-1.1141838385242409e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "indexExtend2";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_index2_defJnt" -parent "rt_hand_indexExtend2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -8.8817841970012523e-016 1.7763568394002505e-015 
		-2.2204460492503131e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 1.2066929457612261e-006 0.00014712386047474639 
		-0.0005649389815016977 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "index2";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_indexExtend3_defJnt" -parent "rt_hand_index2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.56000313109840061 -7.7395276614211605e-006 
		2.9316356253694664e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "indexExtend3";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_index3_defJnt" -parent "rt_hand_indexExtend3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" 0 -8.8817841970012523e-016 2.2204460492503131e-016 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 8.5377364625159355e-007 -2.6595462023920464e-023 
		0.0010639972306278303 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "index3";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_indexExtend4_defJnt" -parent "rt_hand_index3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.34999688989686639 2.5114513038104747e-006 
		-4.6210815685121531e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "indexExtend4";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_index4_defJnt" -parent "rt_hand_indexExtend4_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" 1.7763568394002505e-015 -8.8817841970012523e-016 
		0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 2.9258721639381321e-010 -5.2187562432087577e-005 
		-0.00064245241039892888 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "index4";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_index5_defJnt" -parent "rt_hand_index4_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.28000116730071412 3.1744172339642773e-006 
		4.0162040892965933e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 8.5377364625159355e-007 -3.7026529683073946e-023 
		-2.7586914362813488e-031 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "index5";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_thumb1_defJnt" -parent "rt_hand_root_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.13533893524287777 0.023810839129361661 -0.17349989573380065 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 74.313999999999979 -39.488000000000035 -7.7606162076025216 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumb1";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_thumbExtend2_defJnt" -parent "rt_hand_thumb1_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.74999914095775733 8.7188939845717073e-008 
		3.8248391760475897e-006 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumbExtend2";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_thumb2_defJnt" -parent "rt_hand_thumbExtend2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" 8.8817841970012523e-016 0 0 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" -4.448120981734995e-016 -6.3611093629270138e-015 
		7.9999999999999813 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumb2";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_thumbExtend3_defJnt" -parent "rt_hand_thumb2_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.37999366565454729 -1.7320585321556337e-006 
		6.4856617232322833e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumbExtend3";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_thumb3_defJnt" -parent "rt_hand_thumbExtend3_defJnt";
	addAttr -cachedInternally true -shortName "liw" -longName "lockInfluenceWeights" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" 0 4.4408920985006262e-016 -1.7763568394002505e-015 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0.00021540829225108924 -8.0984808841844775e-010 
		-1.5223220167376554e-015 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumb3";
	setAttr ".radius" 0.5;
createNode joint -name "rt_hand_thumb4_defJnt" -parent "rt_hand_thumb3_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.39999829913150808 3.6879666742706263e-006 
		-1.8163337536236668e-006 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0.00030463213194233411 -1.1452936521231592e-009 
		1.2611884752994275e-015 ;
	setAttr ".side" 2;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "thumb4";
	setAttr ".radius" 0.5;
createNode joint -name "rt_ankle_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
	setAttr ".translate" -type "double3" -0.57877799999999968 0.68881099999999984 3.8063200000000031e-016 ;
	setAttr ".rotate" -type "double3" -1.3055269535586164e-016 1.9001457584138921e-007 
		-7.8731993548209895e-008 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 0 -2.544443745170814e-014 1.2722218725854073e-014 ;
	setAttr ".radius" 0.4;
createNode joint -name "rt_ball_defJnt" -parent "rt_ankle_defJnt";
	setAttr ".translate" -type "double3" 3.3306690738754696e-016 -0.68828291700000011 
		0.28518804907798762 ;
	setAttr ".rotate" -type "double3" 0 0 -2.056800083631329e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "rt_toe_defJnt" -parent "rt_ball_defJnt";
	setAttr ".translate" -type "double3" 0 0 0.28518804907798767 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_ankle_defJnt";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 0.57877845279512263 0.68881132941334489 1.6223137897675129e-016 ;
	setAttr ".rotate" -type "double3" -1.3060127718512016e-016 1.8999978278681524e-007 
		-7.8767553266402702e-008 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".jointOrient" -type "double3" 1.9083328088781094e-014 2.544443745170814e-014 
		-1.5902773407317587e-014 ;
	setAttr ".radius" 0.4;
createNode joint -name "lf_ball_defJnt" -parent "lf_ankle_defJnt";
	setAttr ".translate" -type "double3" -4.4408920985006262e-016 -0.68828324607288338 
		0.28533920645713773 ;
	setAttr ".rotate" -type "double3" 0 0 -2.0567998291869544e-007 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode joint -name "lf_toe_defJnt" -parent "lf_ball_defJnt";
	setAttr ".translate" -type "double3" 0 0 0.28533920645713806 ;
	setAttr ".minRotLimit" -type "double3" -360 -360 -360 ;
	setAttr ".maxRotLimit" -type "double3" 360 360 360 ;
	setAttr ".radius" 0.5;
createNode lightLinker -shared -name "lightLinker1";
	setAttr -size 3 ".link";
	setAttr -size 3 ".shadowLink";
createNode displayLayerManager -name "layerManager";
createNode displayLayer -name "defaultLayer";
createNode renderLayerManager -name "renderLayerManager";
createNode renderLayer -name "defaultRenderLayer";
	setAttr ".global" yes;
createNode hyperGraphInfo -name "nodeEditorPanel1Info";
createNode hyperView -name "hyperView1";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout1";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel2Info";
createNode hyperView -name "hyperView2";
	setAttr ".viewRectLow" -type "double2" -190.61970088659686 -81.126370292149986 ;
	setAttr ".viewRectHigh" -type "double2" 191.16601339911745 80.302201136421445 ;
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout2";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].positionX" 0.98744195699691772;
	setAttr ".hyperPosition[0].positionY" -1.1263703107833862;
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel3Info";
createNode hyperView -name "hyperView3";
	setAttr ".viewRectLow" -type "double2" -173.97762686487147 -108.44832232237383 ;
	setAttr ".viewRectHigh" -type "double2" 174.95094456369998 107.2659633919119 ;
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout3";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].positionX" 1.2009445428848267;
	setAttr ".hyperPosition[0].positionY" -1.3054652214050293;
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel4Info";
createNode hyperView -name "hyperView4";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout4";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel5Info";
createNode hyperView -name "hyperView5";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout5";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel6Info";
createNode hyperView -name "hyperView6";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout6";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode script -name "uiConfigurationScriptNode";
	setAttr ".before" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
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
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".scriptType" 3;
createNode script -name "sceneConfigurationScriptNode";
	setAttr ".before" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".scriptType" 6;
createNode hyperGraphInfo -name "nodeEditorPanel1Info1";
createNode hyperView -name "hyperView7";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout7";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel2Info1";
createNode hyperView -name "hyperView8";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout8";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel3Info1";
createNode hyperView -name "hyperView9";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout9";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel4Info1";
createNode hyperView -name "hyperView10";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout10";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel5Info1";
createNode hyperView -name "hyperView11";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout11";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel6Info1";
createNode hyperView -name "hyperView12";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout12";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel1Info2";
createNode hyperView -name "hyperView13";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout13";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel2Info2";
createNode hyperView -name "hyperView14";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout14";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel3Info2";
createNode hyperView -name "hyperView15";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout15";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel4Info2";
createNode hyperView -name "hyperView16";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout16";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel5Info2";
createNode hyperView -name "hyperView17";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout17";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel6Info2";
createNode hyperView -name "hyperView18";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout18";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel1Info3";
createNode hyperView -name "hyperView19";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout19";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel2Info3";
createNode hyperView -name "hyperView20";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout20";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel3Info3";
createNode hyperView -name "hyperView21";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout21";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel4Info3";
createNode hyperView -name "hyperView22";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout22";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel5Info3";
createNode hyperView -name "hyperView23";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout23";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
createNode hyperGraphInfo -name "nodeEditorPanel6Info3";
createNode hyperView -name "hyperView24";
	setAttr ".dagView" no;
createNode hyperLayout -name "hyperLayout24";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -size 19 ".hyperPosition";
	setAttr ".hyperPosition[0].nodeVisualState" 1920;
	setAttr ".hyperPosition[1].nodeVisualState" 1920;
	setAttr ".hyperPosition[2].nodeVisualState" 1920;
	setAttr ".hyperPosition[3].nodeVisualState" 1920;
	setAttr ".hyperPosition[4].nodeVisualState" 1920;
	setAttr ".hyperPosition[5].nodeVisualState" 1920;
	setAttr ".hyperPosition[6].nodeVisualState" 1920;
	setAttr ".hyperPosition[7].nodeVisualState" 1920;
	setAttr ".hyperPosition[8].nodeVisualState" 1920;
	setAttr ".hyperPosition[9].nodeVisualState" 1920;
	setAttr ".hyperPosition[10].nodeVisualState" 1920;
	setAttr ".hyperPosition[11].nodeVisualState" 1920;
	setAttr ".hyperPosition[12].nodeVisualState" 1920;
	setAttr ".hyperPosition[13].nodeVisualState" 1920;
	setAttr ".hyperPosition[14].nodeVisualState" 1920;
	setAttr ".hyperPosition[15].nodeVisualState" 1920;
	setAttr ".hyperPosition[16].nodeVisualState" 1920;
	setAttr ".hyperPosition[17].nodeVisualState" 1920;
	setAttr ".hyperPosition[18].nodeVisualState" 1920;
	setAttr ".allNodesFreeform" yes;
select -noExpand :time1;
	setAttr -alteredValue -keyable on ".caching";
	setAttr -channelBox on ".isHistoricallyInteresting";
	setAttr -keyable on ".nodeState";
	setAttr -channelBox on ".binMembership";
	setAttr -keyable on ".outTime" 1;
	setAttr -alteredValue ".unwarpedTime" 1;
select -noExpand :renderPartition;
	setAttr -keyable on ".caching";
	setAttr -channelBox on ".isHistoricallyInteresting";
	setAttr -keyable on ".nodeState";
	setAttr -channelBox on ".binMembership";
	setAttr -size 2 ".sets";
	setAttr -channelBox on ".annotation";
	setAttr -channelBox on ".partitionType";
select -noExpand :initialShadingGroup;
	setAttr -keyable on ".caching";
	setAttr -channelBox on ".isHistoricallyInteresting";
	setAttr -alteredValue -keyable on ".nodeState";
	setAttr -channelBox on ".binMembership";
	setAttr -keyable on ".memberWireframeColor";
	setAttr -channelBox on ".annotation";
	setAttr -channelBox on ".isLayer";
	setAttr -channelBox on ".verticesOnlySet";
	setAttr -channelBox on ".edgesOnlySet";
	setAttr -channelBox on ".facetsOnlySet";
	setAttr -channelBox on ".editPointsOnlySet";
	setAttr -keyable on ".renderableOnlySet" yes;
	setAttr -channelBox on ".miExportMrMaterial";
	setAttr -channelBox on ".miOpaque";
	setAttr -channelBox on ".miExportShadingEngine";
	setAttr -channelBox on ".miExportVolumeSampler";
	setAttr -channelBox on ".miContourEnable";
	setAttr -alteredValue -channelBox on ".miContourColor";
	setAttr -channelBox on ".miContourAlpha";
	setAttr -channelBox on ".miContourWidth";
	setAttr -channelBox on ".miContourRelativeWidth";
select -noExpand :initialParticleSE;
	setAttr -alteredValue -keyable on ".caching";
	setAttr -channelBox on ".isHistoricallyInteresting";
	setAttr -alteredValue -keyable on ".nodeState";
	setAttr -channelBox on ".binMembership";
	setAttr -keyable on ".memberWireframeColor";
	setAttr -channelBox on ".annotation";
	setAttr -channelBox on ".isLayer";
	setAttr -channelBox on ".verticesOnlySet";
	setAttr -channelBox on ".edgesOnlySet";
	setAttr -channelBox on ".facetsOnlySet";
	setAttr -channelBox on ".editPointsOnlySet";
	setAttr -keyable on ".renderableOnlySet" yes;
	setAttr -channelBox on ".miExportMrMaterial";
	setAttr -channelBox on ".miOpaque";
	setAttr -channelBox on ".miExportShadingEngine";
	setAttr -channelBox on ".miExportVolumeSampler";
	setAttr -channelBox on ".miContourEnable";
	setAttr -alteredValue -channelBox on ".miContourColor";
	setAttr -channelBox on ".miContourAlpha";
	setAttr -alteredValue -channelBox on ".miContourWidth";
	setAttr -channelBox on ".miContourRelativeWidth";
select -noExpand :defaultShaderList1;
	setAttr -keyable on ".caching";
	setAttr -channelBox on ".isHistoricallyInteresting";
	setAttr -keyable on ".nodeState";
	setAttr -channelBox on ".binMembership";
	setAttr -size 2 ".shaders";
select -noExpand :postProcessList1;
	setAttr -keyable on ".caching";
	setAttr -channelBox on ".isHistoricallyInteresting";
	setAttr -keyable on ".nodeState";
	setAttr -channelBox on ".binMembership";
	setAttr -size 2 ".postProcesses";
select -noExpand :defaultRenderingList1;
select -noExpand :renderGlobalsList1;
	setAttr -keyable on ".caching";
	setAttr -channelBox on ".isHistoricallyInteresting";
	setAttr -keyable on ".nodeState";
	setAttr -channelBox on ".binMembership";
select -noExpand :defaultResolution;
	setAttr -alteredValue -keyable on ".caching";
	setAttr -keyable on ".isHistoricallyInteresting";
	setAttr -alteredValue -keyable on ".nodeState";
	setAttr -keyable on ".binMembership";
	setAttr -alteredValue ".width";
	setAttr -alteredValue ".height";
	setAttr -alteredValue -keyable on ".pixelAspect" 1;
	setAttr -alteredValue -keyable on ".aspectLock";
	setAttr -alteredValue ".deviceAspectRatio";
	setAttr -alteredValue -keyable on ".lockDeviceAspectRatio";
	setAttr -keyable on ".dotsPerInch";
	setAttr -alteredValue -keyable on ".oddFieldFirst";
	setAttr -alteredValue -keyable on ".fields";
	setAttr -alteredValue -keyable on ".zerothScanline";
	setAttr -keyable on ".imageSizeUnits";
	setAttr -keyable on ".pixelDensityUnits";
select -noExpand :defaultLightSet;
	setAttr -keyable on ".caching";
	setAttr -keyable on ".isHistoricallyInteresting";
	setAttr -keyable on ".nodeState";
	setAttr -keyable on ".binMembership";
	setAttr -keyable on ".memberWireframeColor";
	setAttr -keyable on ".annotation";
	setAttr -keyable on ".isLayer";
	setAttr -keyable on ".verticesOnlySet";
	setAttr -keyable on ".edgesOnlySet";
	setAttr -keyable on ".facetsOnlySet";
	setAttr -keyable on ".editPointsOnlySet";
	setAttr ".renderableOnlySet" yes;
select -noExpand :defaultObjectSet;
	setAttr ".renderableOnlySet" yes;
select -noExpand :hardwareRenderGlobals;
	setAttr -keyable on ".caching";
	setAttr -channelBox on ".isHistoricallyInteresting";
	setAttr -keyable on ".nodeState";
	setAttr -channelBox on ".binMembership";
	setAttr ".colorTextureResolution" 256;
	setAttr ".bumpTextureResolution" 512;
	setAttr -keyable off ".frameBufferFormat";
	setAttr -keyable off -channelBox on ".enableHighQualityLighting";
	setAttr -keyable off -channelBox on ".enableAcceleratedMultiSampling";
	setAttr -keyable off -channelBox on ".enableEdgeAntiAliasing";
	setAttr -keyable off -channelBox on ".enableGeometryMask";
	setAttr -keyable off -channelBox on ".numberOfSamples";
	setAttr -keyable off -channelBox on ".enableMotionBlur";
	setAttr -alteredValue -keyable off -channelBox on ".motionBlurByFrame";
	setAttr -keyable off -channelBox on ".numberOfExposures";
	setAttr -keyable off -channelBox on ".transparencySorting";
	setAttr -keyable off -channelBox on ".transparentShadowCasting";
	setAttr -keyable off ".enableNonPowerOfTwoTexture";
	setAttr -keyable off -channelBox on ".culling";
	setAttr -keyable off -channelBox on ".textureCompression";
	setAttr -keyable off -channelBox on ".lightIntensityThreshold";
	setAttr -keyable off -channelBox on ".smallObjectCulling";
	setAttr -keyable off -channelBox on ".cullingThreshold";
	setAttr -keyable off -channelBox on ".graphicsHardwareGeometryCachingData";
	setAttr -keyable off -channelBox on ".graphicsHardwareGeometryCachingIndexing";
	setAttr -keyable off -channelBox on ".maximumGeometryCacheSize";
	setAttr -keyable off -channelBox on ".writeAlphaAsColor";
	setAttr -keyable off -channelBox on ".writeZDepthAsColor";
	setAttr -keyable on ".hardwareCodec";
	setAttr -keyable on ".hardwareDepth";
	setAttr -keyable on ".hardwareQual";
select -noExpand :hardwareRenderingGlobals;
	setAttr ".objectTypeFilterNameArray" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".objectTypeFilterValueArray" -type "Int32Array" 18 0 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0
		 0 0 0 ;
select -noExpand :defaultHardwareRenderGlobals;
	setAttr -keyable on ".caching";
	setAttr -channelBox on ".isHistoricallyInteresting";
	setAttr -keyable on ".nodeState";
	setAttr -channelBox on ".binMembership";
	setAttr -keyable on ".renderPasses";
	setAttr -keyable on ".cameraIcons";
	setAttr -keyable on ".collisionIcons";
	setAttr -channelBox on ".backgroundColor";
	setAttr -alteredValue -keyable on ".backgroundColorB";
	setAttr -alteredValue -keyable on ".backgroundColorG";
	setAttr -alteredValue -keyable on ".backgroundColorR";
	setAttr -keyable on ".emitterIcons";
	setAttr -keyable on ".extension";
	setAttr -alteredValue -keyable on ".edgeSmoothing";
	setAttr -alteredValue -keyable on ".endFrame";
	setAttr -alteredValue -keyable on ".byFrame";
	setAttr -keyable on ".fieldIcons";
	setAttr -alteredValue -keyable on ".startFrame";
	setAttr -keyable on ".grid";
	setAttr -keyable on ".lightIcons";
	setAttr -keyable on ".lineSmoothing";
	setAttr -keyable on ".motionBlur";
	setAttr -keyable on ".transformIcons";
	setAttr -keyable on ".texturing";
	setAttr -keyable on ".multiPassRendering";
	setAttr -keyable on ".writeZDepth";
	setAttr ".filename" -type "string" "im";
	setAttr -keyable on ".imageFormat";
	setAttr ".resolution" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -keyable on ".alphaSource";
	setAttr -keyable on ".drawStyle";
	setAttr -keyable on ".lightingMode";
	setAttr -keyable on ".fullImageResolution";
	setAttr -keyable on ".antiAliasPolygons";
	setAttr -keyable on ".geometryMask";
	setAttr -channelBox on ".displayShadows";
connectAttr "cn_spine_01_defJnt.scale" "cn_spine_02_defJnt.inverseScale";
connectAttr "cn_spine_02_defJnt.scale" "cn_spine_03_defJnt.inverseScale";
connectAttr "cn_spine_03_defJnt.scale" "cn_spine_04_defJnt.inverseScale";
connectAttr "cn_spine_04_defJnt.scale" "cn_spine_05_defJnt.inverseScale";
connectAttr "cn_spine_05_defJnt.scale" "cn_spine_06_defJnt.inverseScale";
connectAttr "cn_spine_06_defJnt.scale" "cn_spine_07_defJnt.inverseScale";
connectAttr "cn_spine_07_defJnt.scale" "cn_spine_08_defJnt.inverseScale";
connectAttr "cn_spine_08_defJnt.scale" "cn_spine_09_defJnt.inverseScale";
connectAttr "cn_spine_09_defJnt.scale" "cn_spine_10_defJnt.inverseScale";
connectAttr "cn_spine_10_defJnt.scale" "cn_spine_11_defJnt.inverseScale";
connectAttr "cn_spine_10_defJnt.scale" "rt_head_eye_defJnt.inverseScale";
connectAttr "cn_spine_10_defJnt.scale" "lf_head_eye_defJnt.inverseScale";
connectAttr "lf_shoulder_1_defJnt.scale" "lf_shoulder_2_defJnt.inverseScale";
connectAttr "lf_shoulder_2_defJnt.scale" "lf_shoulder_3_defJnt.inverseScale";
connectAttr "lf_shoulder_3_defJnt.scale" "lf_shoulder_4_defJnt.inverseScale";
connectAttr "lf_shoulder_4_defJnt.scale" "lf_shoulder_5_defJnt.inverseScale";
connectAttr "lf_shoulder_5_defJnt.scale" "lf_arm_1_defJnt.inverseScale";
connectAttr "lf_arm_1_defJnt.scale" "lf_arm_2_defJnt.inverseScale";
connectAttr "lf_arm_2_defJnt.scale" "lf_arm_3_defJnt.inverseScale";
connectAttr "lf_arm_3_defJnt.scale" "lf_arm_4_defJnt.inverseScale";
connectAttr "lf_arm_4_defJnt.scale" "lf_arm_5_defJnt.inverseScale";
connectAttr "lf_arm_5_defJnt.scale" "lf_hand_defJnt.inverseScale";
connectAttr "lf_hand_defJnt.scale" "lf_hand_end_defJnt.inverseScale";
connectAttr "lf_hand_root_defJnt.scale" "lf_hand_pinky1_defJnt.inverseScale";
connectAttr "lf_hand_pinky1_defJnt.scale" "lf_hand_pinkyExtend2_defJnt.inverseScale"
		;
connectAttr "lf_hand_pinkyExtend2_defJnt.scale" "lf_hand_pinky2_defJnt.inverseScale"
		;
connectAttr "lf_hand_pinky2_defJnt.scale" "lf_hand_pinkyExtend3_defJnt.inverseScale"
		;
connectAttr "lf_hand_pinkyExtend3_defJnt.scale" "lf_hand_pinky3_defJnt.inverseScale"
		;
connectAttr "lf_hand_pinky3_defJnt.scale" "lf_hand_pinkyExtend4_defJnt.inverseScale"
		;
connectAttr "lf_hand_pinkyExtend4_defJnt.scale" "lf_hand_pinky4_defJnt.inverseScale"
		;
connectAttr "lf_hand_pinky4_defJnt.scale" "lf_hand_pinky5_defJnt.inverseScale";
connectAttr "lf_hand_root_defJnt.scale" "lf_hand_mid1_defJnt.inverseScale";
connectAttr "lf_hand_mid1_defJnt.scale" "lf_hand_midExtend2_defJnt.inverseScale"
		;
connectAttr "lf_hand_midExtend2_defJnt.scale" "lf_hand_mid2_defJnt.inverseScale"
		;
connectAttr "lf_hand_mid2_defJnt.scale" "lf_hand_midExtend3_defJnt.inverseScale"
		;
connectAttr "lf_hand_midExtend3_defJnt.scale" "lf_hand_mid3_defJnt.inverseScale"
		;
connectAttr "lf_hand_mid3_defJnt.scale" "lf_hand_midExtend4_defJnt.inverseScale"
		;
connectAttr "lf_hand_midExtend4_defJnt.scale" "lf_hand_mid4_defJnt.inverseScale"
		;
connectAttr "lf_hand_mid4_defJnt.scale" "lf_hand_mid5_defJnt.inverseScale";
connectAttr "lf_hand_root_defJnt.scale" "lf_hand_index1_defJnt.inverseScale";
connectAttr "lf_hand_index1_defJnt.scale" "lf_hand_indexExtend2_defJnt.inverseScale"
		;
connectAttr "lf_hand_indexExtend2_defJnt.scale" "lf_hand_index2_defJnt.inverseScale"
		;
connectAttr "lf_hand_index2_defJnt.scale" "lf_hand_indexExtend3_defJnt.inverseScale"
		;
connectAttr "lf_hand_indexExtend3_defJnt.scale" "lf_hand_index3_defJnt.inverseScale"
		;
connectAttr "lf_hand_index3_defJnt.scale" "lf_hand_indexExtend4_defJnt.inverseScale"
		;
connectAttr "lf_hand_indexExtend4_defJnt.scale" "lf_hand_index4_defJnt.inverseScale"
		;
connectAttr "lf_hand_index4_defJnt.scale" "lf_hand_index5_defJnt.inverseScale";
connectAttr "lf_hand_root_defJnt.scale" "lf_hand_thumb1_defJnt.inverseScale";
connectAttr "lf_hand_thumb1_defJnt.scale" "lf_hand_thumbExtend2_defJnt.inverseScale"
		;
connectAttr "lf_hand_thumbExtend2_defJnt.scale" "lf_hand_thumb2_defJnt.inverseScale"
		;
connectAttr "lf_hand_thumb2_defJnt.scale" "lf_hand_thumbExtend3_defJnt.inverseScale"
		;
connectAttr "lf_hand_thumbExtend3_defJnt.scale" "lf_hand_thumb3_defJnt.inverseScale"
		;
connectAttr "lf_hand_thumb3_defJnt.scale" "lf_hand_thumb4_defJnt.inverseScale";
connectAttr "rt_shoulder_1_defJnt.scale" "rt_shoulder_2_defJnt.inverseScale";
connectAttr "rt_shoulder_2_defJnt.scale" "rt_shoulder_3_defJnt.inverseScale";
connectAttr "rt_shoulder_3_defJnt.scale" "rt_shoulder_4_defJnt.inverseScale";
connectAttr "rt_shoulder_4_defJnt.scale" "rt_shoulder_5_defJnt.inverseScale";
connectAttr "rt_shoulder_5_defJnt.scale" "rt_arm_1_defJnt.inverseScale";
connectAttr "rt_arm_1_defJnt.scale" "rt_arm_2_defJnt.inverseScale";
connectAttr "rt_arm_2_defJnt.scale" "rt_arm_3_defJnt.inverseScale";
connectAttr "rt_arm_3_defJnt.scale" "rt_arm_4_defJnt.inverseScale";
connectAttr "rt_arm_4_defJnt.scale" "rt_arm_5_defJnt.inverseScale";
connectAttr "rt_arm_5_defJnt.scale" "rt_hand_defJnt.inverseScale";
connectAttr "rt_hand_defJnt.scale" "rt_hand_end_defJnt.inverseScale";
connectAttr "lf_leg_1_defJnt.scale" "lf_leg_2_defJnt.inverseScale";
connectAttr "lf_leg_2_defJnt.scale" "lf_leg_3_defJnt.inverseScale";
connectAttr "lf_leg_3_defJnt.scale" "lf_leg_4_defJnt.inverseScale";
connectAttr "lf_leg_4_defJnt.scale" "lf_knee_1_defJnt.inverseScale";
connectAttr "lf_knee_1_defJnt.scale" "lf_knee_2_defJnt.inverseScale";
connectAttr "lf_knee_2_defJnt.scale" "lf_knee_3_defJnt.inverseScale";
connectAttr "lf_knee_3_defJnt.scale" "lf_knee_4_defJnt.inverseScale";
connectAttr "lf_knee_4_defJnt.scale" "lf_foot_defJnt.inverseScale";
connectAttr "lf_foot_defJnt.scale" "lf_foot_end_defJnt.inverseScale";
connectAttr "rt_leg_1_defJnt.scale" "rt_leg_2_defJnt.inverseScale";
connectAttr "rt_leg_2_defJnt.scale" "rt_leg_3_defJnt.inverseScale";
connectAttr "rt_leg_3_defJnt.scale" "rt_leg_4_defJnt.inverseScale";
connectAttr "rt_leg_4_defJnt.scale" "rt_knee_1_defJnt.inverseScale";
connectAttr "rt_knee_1_defJnt.scale" "rt_knee_2_defJnt.inverseScale";
connectAttr "rt_knee_2_defJnt.scale" "rt_knee_3_defJnt.inverseScale";
connectAttr "rt_knee_3_defJnt.scale" "rt_knee_4_defJnt.inverseScale";
connectAttr "rt_knee_4_defJnt.scale" "rt_foot_defJnt.inverseScale";
connectAttr "rt_foot_defJnt.scale" "rt_foot_end_defJnt.inverseScale";
connectAttr "rt_hand_root_defJnt.scale" "rt_hand_pinky1_defJnt.inverseScale";
connectAttr "rt_hand_pinky1_defJnt.scale" "rt_hand_pinkyExtend2_defJnt.inverseScale"
		;
connectAttr "rt_hand_pinkyExtend2_defJnt.scale" "rt_hand_pinky2_defJnt.inverseScale"
		;
connectAttr "rt_hand_pinky2_defJnt.scale" "rt_hand_pinkyExtend3_defJnt.inverseScale"
		;
connectAttr "rt_hand_pinkyExtend3_defJnt.scale" "rt_hand_pinky3_defJnt.inverseScale"
		;
connectAttr "rt_hand_pinky3_defJnt.scale" "rt_hand_pinkyExtend4_defJnt.inverseScale"
		;
connectAttr "rt_hand_pinkyExtend4_defJnt.scale" "rt_hand_pinky4_defJnt.inverseScale"
		;
connectAttr "rt_hand_pinky4_defJnt.scale" "rt_hand_pinky5_defJnt.inverseScale";
connectAttr "rt_hand_root_defJnt.scale" "rt_hand_mid1_defJnt.inverseScale";
connectAttr "rt_hand_mid1_defJnt.scale" "rt_hand_midExtend2_defJnt.inverseScale"
		;
connectAttr "rt_hand_midExtend2_defJnt.scale" "rt_hand_mid2_defJnt.inverseScale"
		;
connectAttr "rt_hand_mid2_defJnt.scale" "rt_hand_midExtend3_defJnt.inverseScale"
		;
connectAttr "rt_hand_midExtend3_defJnt.scale" "rt_hand_mid3_defJnt.inverseScale"
		;
connectAttr "rt_hand_mid3_defJnt.scale" "rt_hand_midExtend4_defJnt.inverseScale"
		;
connectAttr "rt_hand_midExtend4_defJnt.scale" "rt_hand_mid4_defJnt.inverseScale"
		;
connectAttr "rt_hand_mid4_defJnt.scale" "rt_hand_mid5_defJnt.inverseScale";
connectAttr "rt_hand_root_defJnt.scale" "rt_hand_index1_defJnt.inverseScale";
connectAttr "rt_hand_index1_defJnt.scale" "rt_hand_indexExtend2_defJnt.inverseScale"
		;
connectAttr "rt_hand_indexExtend2_defJnt.scale" "rt_hand_index2_defJnt.inverseScale"
		;
connectAttr "rt_hand_index2_defJnt.scale" "rt_hand_indexExtend3_defJnt.inverseScale"
		;
connectAttr "rt_hand_indexExtend3_defJnt.scale" "rt_hand_index3_defJnt.inverseScale"
		;
connectAttr "rt_hand_index3_defJnt.scale" "rt_hand_indexExtend4_defJnt.inverseScale"
		;
connectAttr "rt_hand_indexExtend4_defJnt.scale" "rt_hand_index4_defJnt.inverseScale"
		;
connectAttr "rt_hand_index4_defJnt.scale" "rt_hand_index5_defJnt.inverseScale";
connectAttr "rt_hand_root_defJnt.scale" "rt_hand_thumb1_defJnt.inverseScale";
connectAttr "rt_hand_thumb1_defJnt.scale" "rt_hand_thumbExtend2_defJnt.inverseScale"
		;
connectAttr "rt_hand_thumbExtend2_defJnt.scale" "rt_hand_thumb2_defJnt.inverseScale"
		;
connectAttr "rt_hand_thumb2_defJnt.scale" "rt_hand_thumbExtend3_defJnt.inverseScale"
		;
connectAttr "rt_hand_thumbExtend3_defJnt.scale" "rt_hand_thumb3_defJnt.inverseScale"
		;
connectAttr "rt_hand_thumb3_defJnt.scale" "rt_hand_thumb4_defJnt.inverseScale";
connectAttr "rt_ankle_defJnt.scale" "rt_ball_defJnt.inverseScale";
connectAttr "rt_ball_defJnt.scale" "rt_toe_defJnt.inverseScale";
connectAttr "lf_ankle_defJnt.scale" "lf_ball_defJnt.inverseScale";
connectAttr "lf_ball_defJnt.scale" "lf_toe_defJnt.inverseScale";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.displayLayerId[0]" "defaultLayer.identification";
connectAttr "renderLayerManager.renderLayerId[0]" "defaultRenderLayer.identification"
		;
connectAttr "hyperView1.message" "nodeEditorPanel1Info.bookmarks[0]";
connectAttr "hyperLayout1.message" "hyperView1.hyperLayout";
connectAttr "nodeEditorPanel2Info.message" "hyperLayout1.hyperPosition[2].dependNode"
		;
connectAttr "hyperView2.message" "hyperLayout1.hyperPosition[3].dependNode";
connectAttr "hyperLayout2.message" "hyperLayout1.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel3Info.message" "hyperLayout1.hyperPosition[5].dependNode"
		;
connectAttr "hyperView3.message" "hyperLayout1.hyperPosition[6].dependNode";
connectAttr "hyperLayout3.message" "hyperLayout1.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info.message" "hyperLayout1.hyperPosition[8].dependNode"
		;
connectAttr "hyperView4.message" "hyperLayout1.hyperPosition[9].dependNode";
connectAttr "hyperLayout4.message" "hyperLayout1.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel5Info.message" "hyperLayout1.hyperPosition[11].dependNode"
		;
connectAttr "hyperView5.message" "hyperLayout1.hyperPosition[12].dependNode";
connectAttr "hyperLayout5.message" "hyperLayout1.hyperPosition[13].dependNode";
connectAttr "nodeEditorPanel6Info.message" "hyperLayout1.hyperPosition[14].dependNode"
		;
connectAttr "hyperView6.message" "hyperLayout1.hyperPosition[15].dependNode";
connectAttr "hyperLayout6.message" "hyperLayout1.hyperPosition[16].dependNode";
connectAttr "uiConfigurationScriptNode.message" "hyperLayout1.hyperPosition[17].dependNode"
		;
connectAttr "sceneConfigurationScriptNode.message" "hyperLayout1.hyperPosition[18].dependNode"
		;
connectAttr "hyperView2.message" "nodeEditorPanel2Info.bookmarks[0]";
connectAttr "hyperLayout2.message" "hyperView2.hyperLayout";
connectAttr "sceneConfigurationScriptNode.message" "hyperLayout2.hyperPosition[18].dependNode"
		;
connectAttr "hyperView3.message" "nodeEditorPanel3Info.bookmarks[0]";
connectAttr "hyperLayout3.message" "hyperView3.hyperLayout";
connectAttr "uiConfigurationScriptNode.message" "hyperLayout3.hyperPosition[17].dependNode"
		;
connectAttr "sceneConfigurationScriptNode.message" "hyperLayout3.hyperPosition[18].dependNode"
		;
connectAttr "hyperView4.message" "nodeEditorPanel4Info.bookmarks[0]";
connectAttr "hyperLayout4.message" "hyperView4.hyperLayout";
connectAttr "nodeEditorPanel1Info.message" "hyperLayout4.hyperPosition[2].dependNode"
		;
connectAttr "hyperView1.message" "hyperLayout4.hyperPosition[3].dependNode";
connectAttr "hyperLayout1.message" "hyperLayout4.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info.message" "hyperLayout4.hyperPosition[5].dependNode"
		;
connectAttr "hyperView2.message" "hyperLayout4.hyperPosition[6].dependNode";
connectAttr "hyperLayout2.message" "hyperLayout4.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info.message" "hyperLayout4.hyperPosition[8].dependNode"
		;
connectAttr "hyperView3.message" "hyperLayout4.hyperPosition[9].dependNode";
connectAttr "hyperLayout3.message" "hyperLayout4.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel5Info.message" "hyperLayout4.hyperPosition[11].dependNode"
		;
connectAttr "hyperView5.message" "hyperLayout4.hyperPosition[12].dependNode";
connectAttr "hyperLayout5.message" "hyperLayout4.hyperPosition[13].dependNode";
connectAttr "nodeEditorPanel6Info.message" "hyperLayout4.hyperPosition[14].dependNode"
		;
connectAttr "hyperView6.message" "hyperLayout4.hyperPosition[15].dependNode";
connectAttr "hyperLayout6.message" "hyperLayout4.hyperPosition[16].dependNode";
connectAttr "uiConfigurationScriptNode.message" "hyperLayout4.hyperPosition[17].dependNode"
		;
connectAttr "sceneConfigurationScriptNode.message" "hyperLayout4.hyperPosition[18].dependNode"
		;
connectAttr "hyperView5.message" "nodeEditorPanel5Info.bookmarks[0]";
connectAttr "hyperLayout5.message" "hyperView5.hyperLayout";
connectAttr "nodeEditorPanel1Info.message" "hyperLayout5.hyperPosition[2].dependNode"
		;
connectAttr "hyperView1.message" "hyperLayout5.hyperPosition[3].dependNode";
connectAttr "hyperLayout1.message" "hyperLayout5.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info.message" "hyperLayout5.hyperPosition[5].dependNode"
		;
connectAttr "hyperView2.message" "hyperLayout5.hyperPosition[6].dependNode";
connectAttr "hyperLayout2.message" "hyperLayout5.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info.message" "hyperLayout5.hyperPosition[8].dependNode"
		;
connectAttr "hyperView3.message" "hyperLayout5.hyperPosition[9].dependNode";
connectAttr "hyperLayout3.message" "hyperLayout5.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel4Info.message" "hyperLayout5.hyperPosition[11].dependNode"
		;
connectAttr "hyperView4.message" "hyperLayout5.hyperPosition[12].dependNode";
connectAttr "hyperLayout4.message" "hyperLayout5.hyperPosition[13].dependNode";
connectAttr "nodeEditorPanel6Info.message" "hyperLayout5.hyperPosition[14].dependNode"
		;
connectAttr "hyperView6.message" "hyperLayout5.hyperPosition[15].dependNode";
connectAttr "hyperLayout6.message" "hyperLayout5.hyperPosition[16].dependNode";
connectAttr "uiConfigurationScriptNode.message" "hyperLayout5.hyperPosition[17].dependNode"
		;
connectAttr "sceneConfigurationScriptNode.message" "hyperLayout5.hyperPosition[18].dependNode"
		;
connectAttr "hyperView6.message" "nodeEditorPanel6Info.bookmarks[0]";
connectAttr "hyperLayout6.message" "hyperView6.hyperLayout";
connectAttr "nodeEditorPanel1Info.message" "hyperLayout6.hyperPosition[2].dependNode"
		;
connectAttr "hyperView1.message" "hyperLayout6.hyperPosition[3].dependNode";
connectAttr "hyperLayout1.message" "hyperLayout6.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info.message" "hyperLayout6.hyperPosition[5].dependNode"
		;
connectAttr "hyperView2.message" "hyperLayout6.hyperPosition[6].dependNode";
connectAttr "hyperLayout2.message" "hyperLayout6.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info.message" "hyperLayout6.hyperPosition[8].dependNode"
		;
connectAttr "hyperView3.message" "hyperLayout6.hyperPosition[9].dependNode";
connectAttr "hyperLayout3.message" "hyperLayout6.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel4Info.message" "hyperLayout6.hyperPosition[11].dependNode"
		;
connectAttr "hyperView4.message" "hyperLayout6.hyperPosition[12].dependNode";
connectAttr "hyperLayout4.message" "hyperLayout6.hyperPosition[13].dependNode";
connectAttr "nodeEditorPanel5Info.message" "hyperLayout6.hyperPosition[14].dependNode"
		;
connectAttr "hyperView5.message" "hyperLayout6.hyperPosition[15].dependNode";
connectAttr "hyperLayout5.message" "hyperLayout6.hyperPosition[16].dependNode";
connectAttr "uiConfigurationScriptNode.message" "hyperLayout6.hyperPosition[17].dependNode"
		;
connectAttr "sceneConfigurationScriptNode.message" "hyperLayout6.hyperPosition[18].dependNode"
		;
connectAttr "hyperView7.message" "nodeEditorPanel1Info1.bookmarks[0]";
connectAttr "hyperLayout7.message" "hyperView7.hyperLayout";
connectAttr "nodeEditorPanel2Info1.message" "hyperLayout7.hyperPosition[2].dependNode"
		;
connectAttr "hyperView8.message" "hyperLayout7.hyperPosition[3].dependNode";
connectAttr "hyperLayout8.message" "hyperLayout7.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel3Info1.message" "hyperLayout7.hyperPosition[5].dependNode"
		;
connectAttr "hyperView9.message" "hyperLayout7.hyperPosition[6].dependNode";
connectAttr "hyperLayout9.message" "hyperLayout7.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info1.message" "hyperLayout7.hyperPosition[8].dependNode"
		;
connectAttr "hyperView10.message" "hyperLayout7.hyperPosition[9].dependNode";
connectAttr "hyperLayout10.message" "hyperLayout7.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel5Info1.message" "hyperLayout7.hyperPosition[11].dependNode"
		;
connectAttr "hyperView11.message" "hyperLayout7.hyperPosition[12].dependNode";
connectAttr "hyperLayout11.message" "hyperLayout7.hyperPosition[13].dependNode";
connectAttr "nodeEditorPanel6Info1.message" "hyperLayout7.hyperPosition[14].dependNode"
		;
connectAttr "hyperView12.message" "hyperLayout7.hyperPosition[15].dependNode";
connectAttr "hyperLayout12.message" "hyperLayout7.hyperPosition[16].dependNode";
connectAttr "hyperView8.message" "nodeEditorPanel2Info1.bookmarks[0]";
connectAttr "hyperLayout8.message" "hyperView8.hyperLayout";
connectAttr "nodeEditorPanel1Info1.message" "hyperLayout8.hyperPosition[2].dependNode"
		;
connectAttr "hyperView7.message" "hyperLayout8.hyperPosition[3].dependNode";
connectAttr "hyperLayout7.message" "hyperLayout8.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel3Info1.message" "hyperLayout8.hyperPosition[5].dependNode"
		;
connectAttr "hyperView9.message" "hyperLayout8.hyperPosition[6].dependNode";
connectAttr "hyperLayout9.message" "hyperLayout8.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info1.message" "hyperLayout8.hyperPosition[8].dependNode"
		;
connectAttr "hyperView10.message" "hyperLayout8.hyperPosition[9].dependNode";
connectAttr "hyperLayout10.message" "hyperLayout8.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel5Info1.message" "hyperLayout8.hyperPosition[11].dependNode"
		;
connectAttr "hyperView11.message" "hyperLayout8.hyperPosition[12].dependNode";
connectAttr "hyperLayout11.message" "hyperLayout8.hyperPosition[13].dependNode";
connectAttr "nodeEditorPanel6Info1.message" "hyperLayout8.hyperPosition[14].dependNode"
		;
connectAttr "hyperView12.message" "hyperLayout8.hyperPosition[15].dependNode";
connectAttr "hyperLayout12.message" "hyperLayout8.hyperPosition[16].dependNode";
connectAttr "hyperView9.message" "nodeEditorPanel3Info1.bookmarks[0]";
connectAttr "hyperLayout9.message" "hyperView9.hyperLayout";
connectAttr "nodeEditorPanel1Info1.message" "hyperLayout9.hyperPosition[2].dependNode"
		;
connectAttr "hyperView7.message" "hyperLayout9.hyperPosition[3].dependNode";
connectAttr "hyperLayout7.message" "hyperLayout9.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info1.message" "hyperLayout9.hyperPosition[5].dependNode"
		;
connectAttr "hyperView8.message" "hyperLayout9.hyperPosition[6].dependNode";
connectAttr "hyperLayout8.message" "hyperLayout9.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info1.message" "hyperLayout9.hyperPosition[8].dependNode"
		;
connectAttr "hyperView10.message" "hyperLayout9.hyperPosition[9].dependNode";
connectAttr "hyperLayout10.message" "hyperLayout9.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel5Info1.message" "hyperLayout9.hyperPosition[11].dependNode"
		;
connectAttr "hyperView11.message" "hyperLayout9.hyperPosition[12].dependNode";
connectAttr "hyperLayout11.message" "hyperLayout9.hyperPosition[13].dependNode";
connectAttr "nodeEditorPanel6Info1.message" "hyperLayout9.hyperPosition[14].dependNode"
		;
connectAttr "hyperView12.message" "hyperLayout9.hyperPosition[15].dependNode";
connectAttr "hyperLayout12.message" "hyperLayout9.hyperPosition[16].dependNode";
connectAttr "hyperView10.message" "nodeEditorPanel4Info1.bookmarks[0]";
connectAttr "hyperLayout10.message" "hyperView10.hyperLayout";
connectAttr "nodeEditorPanel1Info1.message" "hyperLayout10.hyperPosition[2].dependNode"
		;
connectAttr "hyperView7.message" "hyperLayout10.hyperPosition[3].dependNode";
connectAttr "hyperLayout7.message" "hyperLayout10.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info1.message" "hyperLayout10.hyperPosition[5].dependNode"
		;
connectAttr "hyperView8.message" "hyperLayout10.hyperPosition[6].dependNode";
connectAttr "hyperLayout8.message" "hyperLayout10.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info1.message" "hyperLayout10.hyperPosition[8].dependNode"
		;
connectAttr "hyperView9.message" "hyperLayout10.hyperPosition[9].dependNode";
connectAttr "hyperLayout9.message" "hyperLayout10.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel5Info1.message" "hyperLayout10.hyperPosition[11].dependNode"
		;
connectAttr "hyperView11.message" "hyperLayout10.hyperPosition[12].dependNode";
connectAttr "hyperLayout11.message" "hyperLayout10.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info1.message" "hyperLayout10.hyperPosition[14].dependNode"
		;
connectAttr "hyperView12.message" "hyperLayout10.hyperPosition[15].dependNode";
connectAttr "hyperLayout12.message" "hyperLayout10.hyperPosition[16].dependNode"
		;
connectAttr "hyperView11.message" "nodeEditorPanel5Info1.bookmarks[0]";
connectAttr "hyperLayout11.message" "hyperView11.hyperLayout";
connectAttr "nodeEditorPanel1Info1.message" "hyperLayout11.hyperPosition[2].dependNode"
		;
connectAttr "hyperView7.message" "hyperLayout11.hyperPosition[3].dependNode";
connectAttr "hyperLayout7.message" "hyperLayout11.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info1.message" "hyperLayout11.hyperPosition[5].dependNode"
		;
connectAttr "hyperView8.message" "hyperLayout11.hyperPosition[6].dependNode";
connectAttr "hyperLayout8.message" "hyperLayout11.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info1.message" "hyperLayout11.hyperPosition[8].dependNode"
		;
connectAttr "hyperView9.message" "hyperLayout11.hyperPosition[9].dependNode";
connectAttr "hyperLayout9.message" "hyperLayout11.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel4Info1.message" "hyperLayout11.hyperPosition[11].dependNode"
		;
connectAttr "hyperView10.message" "hyperLayout11.hyperPosition[12].dependNode";
connectAttr "hyperLayout10.message" "hyperLayout11.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info1.message" "hyperLayout11.hyperPosition[14].dependNode"
		;
connectAttr "hyperView12.message" "hyperLayout11.hyperPosition[15].dependNode";
connectAttr "hyperLayout12.message" "hyperLayout11.hyperPosition[16].dependNode"
		;
connectAttr "hyperView12.message" "nodeEditorPanel6Info1.bookmarks[0]";
connectAttr "hyperLayout12.message" "hyperView12.hyperLayout";
connectAttr "nodeEditorPanel1Info1.message" "hyperLayout12.hyperPosition[2].dependNode"
		;
connectAttr "hyperView7.message" "hyperLayout12.hyperPosition[3].dependNode";
connectAttr "hyperLayout7.message" "hyperLayout12.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info1.message" "hyperLayout12.hyperPosition[5].dependNode"
		;
connectAttr "hyperView8.message" "hyperLayout12.hyperPosition[6].dependNode";
connectAttr "hyperLayout8.message" "hyperLayout12.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info1.message" "hyperLayout12.hyperPosition[8].dependNode"
		;
connectAttr "hyperView9.message" "hyperLayout12.hyperPosition[9].dependNode";
connectAttr "hyperLayout9.message" "hyperLayout12.hyperPosition[10].dependNode";
connectAttr "nodeEditorPanel4Info1.message" "hyperLayout12.hyperPosition[11].dependNode"
		;
connectAttr "hyperView10.message" "hyperLayout12.hyperPosition[12].dependNode";
connectAttr "hyperLayout10.message" "hyperLayout12.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel5Info1.message" "hyperLayout12.hyperPosition[14].dependNode"
		;
connectAttr "hyperView11.message" "hyperLayout12.hyperPosition[15].dependNode";
connectAttr "hyperLayout11.message" "hyperLayout12.hyperPosition[16].dependNode"
		;
connectAttr "hyperView13.message" "nodeEditorPanel1Info2.bookmarks[0]";
connectAttr "hyperLayout13.message" "hyperView13.hyperLayout";
connectAttr "nodeEditorPanel2Info2.message" "hyperLayout13.hyperPosition[2].dependNode"
		;
connectAttr "hyperView14.message" "hyperLayout13.hyperPosition[3].dependNode";
connectAttr "hyperLayout14.message" "hyperLayout13.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel3Info2.message" "hyperLayout13.hyperPosition[5].dependNode"
		;
connectAttr "hyperView15.message" "hyperLayout13.hyperPosition[6].dependNode";
connectAttr "hyperLayout15.message" "hyperLayout13.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info2.message" "hyperLayout13.hyperPosition[8].dependNode"
		;
connectAttr "hyperView16.message" "hyperLayout13.hyperPosition[9].dependNode";
connectAttr "hyperLayout16.message" "hyperLayout13.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel5Info2.message" "hyperLayout13.hyperPosition[11].dependNode"
		;
connectAttr "hyperView17.message" "hyperLayout13.hyperPosition[12].dependNode";
connectAttr "hyperLayout17.message" "hyperLayout13.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info2.message" "hyperLayout13.hyperPosition[14].dependNode"
		;
connectAttr "hyperView18.message" "hyperLayout13.hyperPosition[15].dependNode";
connectAttr "hyperLayout18.message" "hyperLayout13.hyperPosition[16].dependNode"
		;
connectAttr "hyperView14.message" "nodeEditorPanel2Info2.bookmarks[0]";
connectAttr "hyperLayout14.message" "hyperView14.hyperLayout";
connectAttr "nodeEditorPanel1Info2.message" "hyperLayout14.hyperPosition[2].dependNode"
		;
connectAttr "hyperView13.message" "hyperLayout14.hyperPosition[3].dependNode";
connectAttr "hyperLayout13.message" "hyperLayout14.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel3Info2.message" "hyperLayout14.hyperPosition[5].dependNode"
		;
connectAttr "hyperView15.message" "hyperLayout14.hyperPosition[6].dependNode";
connectAttr "hyperLayout15.message" "hyperLayout14.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info2.message" "hyperLayout14.hyperPosition[8].dependNode"
		;
connectAttr "hyperView16.message" "hyperLayout14.hyperPosition[9].dependNode";
connectAttr "hyperLayout16.message" "hyperLayout14.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel5Info2.message" "hyperLayout14.hyperPosition[11].dependNode"
		;
connectAttr "hyperView17.message" "hyperLayout14.hyperPosition[12].dependNode";
connectAttr "hyperLayout17.message" "hyperLayout14.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info2.message" "hyperLayout14.hyperPosition[14].dependNode"
		;
connectAttr "hyperView18.message" "hyperLayout14.hyperPosition[15].dependNode";
connectAttr "hyperLayout18.message" "hyperLayout14.hyperPosition[16].dependNode"
		;
connectAttr "hyperView15.message" "nodeEditorPanel3Info2.bookmarks[0]";
connectAttr "hyperLayout15.message" "hyperView15.hyperLayout";
connectAttr "nodeEditorPanel1Info2.message" "hyperLayout15.hyperPosition[2].dependNode"
		;
connectAttr "hyperView13.message" "hyperLayout15.hyperPosition[3].dependNode";
connectAttr "hyperLayout13.message" "hyperLayout15.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info2.message" "hyperLayout15.hyperPosition[5].dependNode"
		;
connectAttr "hyperView14.message" "hyperLayout15.hyperPosition[6].dependNode";
connectAttr "hyperLayout14.message" "hyperLayout15.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info2.message" "hyperLayout15.hyperPosition[8].dependNode"
		;
connectAttr "hyperView16.message" "hyperLayout15.hyperPosition[9].dependNode";
connectAttr "hyperLayout16.message" "hyperLayout15.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel5Info2.message" "hyperLayout15.hyperPosition[11].dependNode"
		;
connectAttr "hyperView17.message" "hyperLayout15.hyperPosition[12].dependNode";
connectAttr "hyperLayout17.message" "hyperLayout15.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info2.message" "hyperLayout15.hyperPosition[14].dependNode"
		;
connectAttr "hyperView18.message" "hyperLayout15.hyperPosition[15].dependNode";
connectAttr "hyperLayout18.message" "hyperLayout15.hyperPosition[16].dependNode"
		;
connectAttr "hyperView16.message" "nodeEditorPanel4Info2.bookmarks[0]";
connectAttr "hyperLayout16.message" "hyperView16.hyperLayout";
connectAttr "nodeEditorPanel1Info2.message" "hyperLayout16.hyperPosition[2].dependNode"
		;
connectAttr "hyperView13.message" "hyperLayout16.hyperPosition[3].dependNode";
connectAttr "hyperLayout13.message" "hyperLayout16.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info2.message" "hyperLayout16.hyperPosition[5].dependNode"
		;
connectAttr "hyperView14.message" "hyperLayout16.hyperPosition[6].dependNode";
connectAttr "hyperLayout14.message" "hyperLayout16.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info2.message" "hyperLayout16.hyperPosition[8].dependNode"
		;
connectAttr "hyperView15.message" "hyperLayout16.hyperPosition[9].dependNode";
connectAttr "hyperLayout15.message" "hyperLayout16.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel5Info2.message" "hyperLayout16.hyperPosition[11].dependNode"
		;
connectAttr "hyperView17.message" "hyperLayout16.hyperPosition[12].dependNode";
connectAttr "hyperLayout17.message" "hyperLayout16.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info2.message" "hyperLayout16.hyperPosition[14].dependNode"
		;
connectAttr "hyperView18.message" "hyperLayout16.hyperPosition[15].dependNode";
connectAttr "hyperLayout18.message" "hyperLayout16.hyperPosition[16].dependNode"
		;
connectAttr "hyperView17.message" "nodeEditorPanel5Info2.bookmarks[0]";
connectAttr "hyperLayout17.message" "hyperView17.hyperLayout";
connectAttr "nodeEditorPanel1Info2.message" "hyperLayout17.hyperPosition[2].dependNode"
		;
connectAttr "hyperView13.message" "hyperLayout17.hyperPosition[3].dependNode";
connectAttr "hyperLayout13.message" "hyperLayout17.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info2.message" "hyperLayout17.hyperPosition[5].dependNode"
		;
connectAttr "hyperView14.message" "hyperLayout17.hyperPosition[6].dependNode";
connectAttr "hyperLayout14.message" "hyperLayout17.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info2.message" "hyperLayout17.hyperPosition[8].dependNode"
		;
connectAttr "hyperView15.message" "hyperLayout17.hyperPosition[9].dependNode";
connectAttr "hyperLayout15.message" "hyperLayout17.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel4Info2.message" "hyperLayout17.hyperPosition[11].dependNode"
		;
connectAttr "hyperView16.message" "hyperLayout17.hyperPosition[12].dependNode";
connectAttr "hyperLayout16.message" "hyperLayout17.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info2.message" "hyperLayout17.hyperPosition[14].dependNode"
		;
connectAttr "hyperView18.message" "hyperLayout17.hyperPosition[15].dependNode";
connectAttr "hyperLayout18.message" "hyperLayout17.hyperPosition[16].dependNode"
		;
connectAttr "hyperView18.message" "nodeEditorPanel6Info2.bookmarks[0]";
connectAttr "hyperLayout18.message" "hyperView18.hyperLayout";
connectAttr "nodeEditorPanel1Info2.message" "hyperLayout18.hyperPosition[2].dependNode"
		;
connectAttr "hyperView13.message" "hyperLayout18.hyperPosition[3].dependNode";
connectAttr "hyperLayout13.message" "hyperLayout18.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info2.message" "hyperLayout18.hyperPosition[5].dependNode"
		;
connectAttr "hyperView14.message" "hyperLayout18.hyperPosition[6].dependNode";
connectAttr "hyperLayout14.message" "hyperLayout18.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info2.message" "hyperLayout18.hyperPosition[8].dependNode"
		;
connectAttr "hyperView15.message" "hyperLayout18.hyperPosition[9].dependNode";
connectAttr "hyperLayout15.message" "hyperLayout18.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel4Info2.message" "hyperLayout18.hyperPosition[11].dependNode"
		;
connectAttr "hyperView16.message" "hyperLayout18.hyperPosition[12].dependNode";
connectAttr "hyperLayout16.message" "hyperLayout18.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel5Info2.message" "hyperLayout18.hyperPosition[14].dependNode"
		;
connectAttr "hyperView17.message" "hyperLayout18.hyperPosition[15].dependNode";
connectAttr "hyperLayout17.message" "hyperLayout18.hyperPosition[16].dependNode"
		;
connectAttr "hyperView19.message" "nodeEditorPanel1Info3.bookmarks[0]";
connectAttr "hyperLayout19.message" "hyperView19.hyperLayout";
connectAttr "lf_head_eye_defJnt.message" "hyperLayout19.hyperPosition[0].dependNode"
		;
connectAttr "rt_head_eye_defJnt.message" "hyperLayout19.hyperPosition[1].dependNode"
		;
connectAttr "nodeEditorPanel2Info3.message" "hyperLayout19.hyperPosition[2].dependNode"
		;
connectAttr "hyperView20.message" "hyperLayout19.hyperPosition[3].dependNode";
connectAttr "hyperLayout20.message" "hyperLayout19.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel3Info3.message" "hyperLayout19.hyperPosition[5].dependNode"
		;
connectAttr "hyperView21.message" "hyperLayout19.hyperPosition[6].dependNode";
connectAttr "hyperLayout21.message" "hyperLayout19.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info3.message" "hyperLayout19.hyperPosition[8].dependNode"
		;
connectAttr "hyperView22.message" "hyperLayout19.hyperPosition[9].dependNode";
connectAttr "hyperLayout22.message" "hyperLayout19.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel5Info3.message" "hyperLayout19.hyperPosition[11].dependNode"
		;
connectAttr "hyperView23.message" "hyperLayout19.hyperPosition[12].dependNode";
connectAttr "hyperLayout23.message" "hyperLayout19.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info3.message" "hyperLayout19.hyperPosition[14].dependNode"
		;
connectAttr "hyperView24.message" "hyperLayout19.hyperPosition[15].dependNode";
connectAttr "hyperLayout24.message" "hyperLayout19.hyperPosition[16].dependNode"
		;
connectAttr "hyperView20.message" "nodeEditorPanel2Info3.bookmarks[0]";
connectAttr "hyperLayout20.message" "hyperView20.hyperLayout";
connectAttr "lf_head_eye_defJnt.message" "hyperLayout20.hyperPosition[0].dependNode"
		;
connectAttr "rt_head_eye_defJnt.message" "hyperLayout20.hyperPosition[1].dependNode"
		;
connectAttr "nodeEditorPanel1Info3.message" "hyperLayout20.hyperPosition[2].dependNode"
		;
connectAttr "hyperView19.message" "hyperLayout20.hyperPosition[3].dependNode";
connectAttr "hyperLayout19.message" "hyperLayout20.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel3Info3.message" "hyperLayout20.hyperPosition[5].dependNode"
		;
connectAttr "hyperView21.message" "hyperLayout20.hyperPosition[6].dependNode";
connectAttr "hyperLayout21.message" "hyperLayout20.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info3.message" "hyperLayout20.hyperPosition[8].dependNode"
		;
connectAttr "hyperView22.message" "hyperLayout20.hyperPosition[9].dependNode";
connectAttr "hyperLayout22.message" "hyperLayout20.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel5Info3.message" "hyperLayout20.hyperPosition[11].dependNode"
		;
connectAttr "hyperView23.message" "hyperLayout20.hyperPosition[12].dependNode";
connectAttr "hyperLayout23.message" "hyperLayout20.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info3.message" "hyperLayout20.hyperPosition[14].dependNode"
		;
connectAttr "hyperView24.message" "hyperLayout20.hyperPosition[15].dependNode";
connectAttr "hyperLayout24.message" "hyperLayout20.hyperPosition[16].dependNode"
		;
connectAttr "hyperView21.message" "nodeEditorPanel3Info3.bookmarks[0]";
connectAttr "hyperLayout21.message" "hyperView21.hyperLayout";
connectAttr "lf_head_eye_defJnt.message" "hyperLayout21.hyperPosition[0].dependNode"
		;
connectAttr "rt_head_eye_defJnt.message" "hyperLayout21.hyperPosition[1].dependNode"
		;
connectAttr "nodeEditorPanel1Info3.message" "hyperLayout21.hyperPosition[2].dependNode"
		;
connectAttr "hyperView19.message" "hyperLayout21.hyperPosition[3].dependNode";
connectAttr "hyperLayout19.message" "hyperLayout21.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info3.message" "hyperLayout21.hyperPosition[5].dependNode"
		;
connectAttr "hyperView20.message" "hyperLayout21.hyperPosition[6].dependNode";
connectAttr "hyperLayout20.message" "hyperLayout21.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel4Info3.message" "hyperLayout21.hyperPosition[8].dependNode"
		;
connectAttr "hyperView22.message" "hyperLayout21.hyperPosition[9].dependNode";
connectAttr "hyperLayout22.message" "hyperLayout21.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel5Info3.message" "hyperLayout21.hyperPosition[11].dependNode"
		;
connectAttr "hyperView23.message" "hyperLayout21.hyperPosition[12].dependNode";
connectAttr "hyperLayout23.message" "hyperLayout21.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info3.message" "hyperLayout21.hyperPosition[14].dependNode"
		;
connectAttr "hyperView24.message" "hyperLayout21.hyperPosition[15].dependNode";
connectAttr "hyperLayout24.message" "hyperLayout21.hyperPosition[16].dependNode"
		;
connectAttr "hyperView22.message" "nodeEditorPanel4Info3.bookmarks[0]";
connectAttr "hyperLayout22.message" "hyperView22.hyperLayout";
connectAttr "lf_head_eye_defJnt.message" "hyperLayout22.hyperPosition[0].dependNode"
		;
connectAttr "rt_head_eye_defJnt.message" "hyperLayout22.hyperPosition[1].dependNode"
		;
connectAttr "nodeEditorPanel1Info3.message" "hyperLayout22.hyperPosition[2].dependNode"
		;
connectAttr "hyperView19.message" "hyperLayout22.hyperPosition[3].dependNode";
connectAttr "hyperLayout19.message" "hyperLayout22.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info3.message" "hyperLayout22.hyperPosition[5].dependNode"
		;
connectAttr "hyperView20.message" "hyperLayout22.hyperPosition[6].dependNode";
connectAttr "hyperLayout20.message" "hyperLayout22.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info3.message" "hyperLayout22.hyperPosition[8].dependNode"
		;
connectAttr "hyperView21.message" "hyperLayout22.hyperPosition[9].dependNode";
connectAttr "hyperLayout21.message" "hyperLayout22.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel5Info3.message" "hyperLayout22.hyperPosition[11].dependNode"
		;
connectAttr "hyperView23.message" "hyperLayout22.hyperPosition[12].dependNode";
connectAttr "hyperLayout23.message" "hyperLayout22.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info3.message" "hyperLayout22.hyperPosition[14].dependNode"
		;
connectAttr "hyperView24.message" "hyperLayout22.hyperPosition[15].dependNode";
connectAttr "hyperLayout24.message" "hyperLayout22.hyperPosition[16].dependNode"
		;
connectAttr "hyperView23.message" "nodeEditorPanel5Info3.bookmarks[0]";
connectAttr "hyperLayout23.message" "hyperView23.hyperLayout";
connectAttr "lf_head_eye_defJnt.message" "hyperLayout23.hyperPosition[0].dependNode"
		;
connectAttr "rt_head_eye_defJnt.message" "hyperLayout23.hyperPosition[1].dependNode"
		;
connectAttr "nodeEditorPanel1Info3.message" "hyperLayout23.hyperPosition[2].dependNode"
		;
connectAttr "hyperView19.message" "hyperLayout23.hyperPosition[3].dependNode";
connectAttr "hyperLayout19.message" "hyperLayout23.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info3.message" "hyperLayout23.hyperPosition[5].dependNode"
		;
connectAttr "hyperView20.message" "hyperLayout23.hyperPosition[6].dependNode";
connectAttr "hyperLayout20.message" "hyperLayout23.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info3.message" "hyperLayout23.hyperPosition[8].dependNode"
		;
connectAttr "hyperView21.message" "hyperLayout23.hyperPosition[9].dependNode";
connectAttr "hyperLayout21.message" "hyperLayout23.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel4Info3.message" "hyperLayout23.hyperPosition[11].dependNode"
		;
connectAttr "hyperView22.message" "hyperLayout23.hyperPosition[12].dependNode";
connectAttr "hyperLayout22.message" "hyperLayout23.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel6Info3.message" "hyperLayout23.hyperPosition[14].dependNode"
		;
connectAttr "hyperView24.message" "hyperLayout23.hyperPosition[15].dependNode";
connectAttr "hyperLayout24.message" "hyperLayout23.hyperPosition[16].dependNode"
		;
connectAttr "hyperView24.message" "nodeEditorPanel6Info3.bookmarks[0]";
connectAttr "hyperLayout24.message" "hyperView24.hyperLayout";
connectAttr "lf_head_eye_defJnt.message" "hyperLayout24.hyperPosition[0].dependNode"
		;
connectAttr "rt_head_eye_defJnt.message" "hyperLayout24.hyperPosition[1].dependNode"
		;
connectAttr "nodeEditorPanel1Info3.message" "hyperLayout24.hyperPosition[2].dependNode"
		;
connectAttr "hyperView19.message" "hyperLayout24.hyperPosition[3].dependNode";
connectAttr "hyperLayout19.message" "hyperLayout24.hyperPosition[4].dependNode";
connectAttr "nodeEditorPanel2Info3.message" "hyperLayout24.hyperPosition[5].dependNode"
		;
connectAttr "hyperView20.message" "hyperLayout24.hyperPosition[6].dependNode";
connectAttr "hyperLayout20.message" "hyperLayout24.hyperPosition[7].dependNode";
connectAttr "nodeEditorPanel3Info3.message" "hyperLayout24.hyperPosition[8].dependNode"
		;
connectAttr "hyperView21.message" "hyperLayout24.hyperPosition[9].dependNode";
connectAttr "hyperLayout21.message" "hyperLayout24.hyperPosition[10].dependNode"
		;
connectAttr "nodeEditorPanel4Info3.message" "hyperLayout24.hyperPosition[11].dependNode"
		;
connectAttr "hyperView22.message" "hyperLayout24.hyperPosition[12].dependNode";
connectAttr "hyperLayout22.message" "hyperLayout24.hyperPosition[13].dependNode"
		;
connectAttr "nodeEditorPanel5Info3.message" "hyperLayout24.hyperPosition[14].dependNode"
		;
connectAttr "hyperView23.message" "hyperLayout24.hyperPosition[15].dependNode";
connectAttr "hyperLayout23.message" "hyperLayout24.hyperPosition[16].dependNode"
		;
connectAttr "defaultRenderLayer.message" ":defaultRenderingList1.rendering" -nextAvailable
		;
connectAttr ":perspShape.message" ":defaultRenderGlobals.swatchCamera";
// End of char2_skel.ma
