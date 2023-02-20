

# Step 1 load the larvae control joint function ####
source("~/Dropbox/r_developments/r_new_functions/3.Functions/joint_cl_blocks.R")

# Step 2. define the path ####
path_control_yuc <- "/Users/fdzul/Library/CloudStorage/OneDrive-Personal/datasets/CENAPRECE/2023/31_yucatan/"

# Step 3. load the blocks ####
cl_yuc <- joint_cl_blocks(path_vector = path_control_yuc,
                          cve_ent = 31)


# Step 3. load the larvae_control_map function ####
source("~/Library/CloudStorage/Dropbox/r_developments/r_new_functions/3.Functions/boldenr/cl_mapview.R")


# Step 4. test the larvae_control_map function with yucatan ####
table(cl_yuc$Tipo.de.Operativo)
table(cl_yuc$Localidad, cl_yuc$Jurisdiccion)

# Step . JS 02.
cl_map_merida_foc <- cl_mapview(cl_dataset = cl_yuc,
                                cve_edo = "31",
                                locality = c("Mérida", "Uman", "Kanasin"),
                                time = "cumulative",
                                cl_type = "Focalizado")
cl_map_merida_bar <- cl_mapview(cl_dataset = cl_yuc,
                                cve_edo = "31",
                                locality = c("Mérida", "Uman", "Kanasin"),
                                time = "cumulative",
                                cl_type = "Barrido")
mapview::mapshot(cl_map_merida_foc,
                 "cl_map_merida_foc.html")
mapview::mapshot(cl_map_merida_bar,
                 "cl_map_merida_barr.html")
