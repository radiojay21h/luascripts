--Get job
--Get Location
--interact with object
--select scenario
--spawn peds
--direct ped behavior
--give reward


Config.StartJob{}
Config.ChooseLocation{
    -- List of locations with coordinates
    local locations = {
        {name = "Location1", x = 123.45, y = 678.90, z = 101.23},
        {name = "Location2", x = 223.45, y = 778.90, z = 201.23},
        {name = "Location3", x = 323.45, y = 878.90, z = 301.23}
    }
    
    -- List of items that can appear at the locations
    local items = {
        "Item1",
        "Item2",
        "Item3",
        "Item4",
        "Item5"
    }
    local retval --[[ integer ]], outEntity --[[ Entity ]] =
        FindFirstObject()
    
}

Config.ChooseScenario{
    --Select behavior based on chosen ped 
    --Spawn in Peds based on scenario
    [S1] = 'Vagrancy'
        --Spawn in homeless,
        -- CREATE_PED
        local retval --[[ Entity ]] =
        CreatePed(
            pedType --[[ integer ]], 
            modelHash --[[ Hash ]], 
            x --[[ number ]], 
            y --[[ number ]], 
            z --[[ number ]], 
            heading --[[ number ]], 
            isNetwork --[[ boolean ]], 
            bScriptHostPed --[[ boolean ]]
        )


    [S2] = FarmerTaboo
        --Spawn in 1 random farmer and 1 random Livestock

    [S3] = HankyPanky
        --Spawn in random 2-3 peds and randomly selct behavior

    [S4] = Ocean
        --Spawn in 1 fish on the beach

    [S5] = Pool
        --Spawn in 1 dolphin or shark

    [S6] = Infestation
        --Spawn in 10 rats on flee

    [S7] = Animal
        --Spawn in 1 or 2 random animal Peds and select calm or attack behavior


}

Config.Peds{
    --List of Ped Groups to choose from
    Peds = {
        
        livestock = { {
            [Cow] = 'a_c_cow',
            [Hen] = "a_c_hen",
            [Humpback] = "a_c_humpback",
            [Husky] = "a_c_husky",
            [Killer Whale] = "a_c_killerwhale",
            [Cougar] = "a_c_mtlion",
            [Poodle] = "a_c_poodle",
            [Pug] = "a_c_pug",
            [Pig] = "a_c_pig",
        },}

        fish = { {
            [Dolphin] = "a_c_dolphin",
            [Humpback] = "a_c_humpback",
            [Killer Whale] = "a_c_killerwhale",
            [Hammerhead] = 'a_c_sharkhammer',
            [Tiger Shark] = "a_c_sharktiger",
        },}

        pets = { {
            [Black Cat] = 'a_c_cat_01',
            [Chop] = 'a_c_chop',
            [Husky] = "a_c_husky",
            [Poodle] = "a_c_poodle",
            [Pug] = "a_c_pug",
            [Retriever] = 'a_c_retriever',
            [Rottweiler] = 'a_c_rottweiler',
            [Sheperd] = "a_c_shepherd",
            [Westy] = "a_c_westy",
        },}

        critters = { {
            [Boar] = 'a_c_boar',
            [Chimp] = 'a_c_chimp',
            [Coyote] = "a_c_coyote",
            [Deer] = "a_c_deer",
            [Cougar] = "a_c_mtlion",
            [Rabbit] = 'a_c_rabbit_01',
            [Rat] = 'a_c_rat',
            [Bigfoot] = "cs_orleans",
            [Alien] = "s_m_m_movalien_01",
        },}

        homeless = { {
            [H1] = 'a_m_m_tramp_01',
            [H1] = 'a_m_m_trampbeac_01',
            [H1] = 'a_m_o_soucent_02',
            [H1] = 'a_m_o_soucent_03',
            [H1] = 'a_m_o_tramp_01',
            [H1] = 'a_f_m_skidrow_01',
            [H1] = 'a_f_m_fatcult_01',
            [H1] = 'a_f_m_tramp_01',
            [H1] = 'a_f_y_beach_01',
            [H1] = 'a_f_y_juggalo_01',
            [H1] = 'a_f_y_rurmeth_01',
            [H1] = 'cs_hunter',
            [H1] = 'csb_cletus',
            [H1] = 'u_f_o_prolhost_01',
            [H1] = 'u_m_y_juggernaut_01',
            [H1] = 'u_m_y_imporage',
            [H1] = 'u_m_y_pogo_01',
            [H1] = 'u_m_y_rsranger_01',
            [H1] = 'u_m_y_zombie_01',

        },}

        farmer = { {
            [F1] = 'a_m_m_farmer_01',
            [F1] = 'a_m_m_hillbilly_01',
            [F1] = 'a_m_m_hillbilly_02',
            [F1] = 'a_m_y_salton_01',
            [F1] = 'csb_oscar',
            [F1] = 'g_m_y_mexgang_01',
            [F1] = 'mp_m_counterfeit_01',
            [F1] = 'mp_m_weed_01',

        },}

        men = { {
            [M1] = 'a_m_m_hillbilly_02',
            [M1] = 'a_m_m_beach_02',
            [M1] = 'a_m_o_acult_01',
            [M1] = 'a_m_o_beach_01',
            [M1] = 'a_m_o_salton_01',
            [M1] = 'a_m_y_acult_02',
            [M1] = 'a_m_y_beach_03',
            [M1] = 'a_m_y_beach_01',
            [M1] = 'a_m_y_bevhills_01',
            [M1] = 'a_m_y_business_02',
            [M1] = 'a_m_y_gay_01',
            [M1] = 'a_m_y_hasjew_01',
            [M1] = 'a_m_y_gay_02',
            [M1] = 'a_m_y_jetski_01',
            [M1] = 'a_m_y_hipster_03',
            [M1] = 'a_m_y_musclbeac_01',
            [M1] = 'a_m_y_soucent_04',
            [M1] = 'a_m_y_vinewood_04',
            [M1] = 'a_m_m_mlcrisis_01',
            [M1] = 'a_m_y_smartcaspat_01',
            [M1] = 'sb_money',
            [M1] = 'csb_prolsec',
            [M1] = 'csb_undercover',
            [M1] = 'csb_avery',
            [M1] = 'mp_m_cocaine_01',
            [M1] = 's_m_m_cntrybar_01',
            [M1] = 's_m_m_strperf_01',
            [M1] = 's_m_y_baywatch_01',
            [M1] = 's_m_y_clown_01',
            [M1] = 's_m_y_marine_02',
            [M1] = 'ig_dreyfuss',
            [M1] = 'ig_priest',
            [M1] = 'ig_tylerdix',
            [M1] = 'u_m_m_griff_01',
            [M1] = 'u_m_y_corpse_01',
            [M1] = 'u_m_y_danceburl_01',
            [M1] = 'u_m_y_dancerave_01',
            [M1] = 'u_m_y_staggrm_01',
            [M1] = 'u_m_m_vince',
            [M1] = 'u_m_y_ushi',

        },}

        women = { {
            [W1] = 'a_f_m_beach_01',
            [W2] = 'a_f_m_bodybuild_01',
            [W3] = 'a_f_m_eastsa_01',
            [W4] = 'a_f_m_eastsa_02',
            [W5] = 'a_f_m_fatcult_01',
            [W6] = 'a_f_o_genstreet_01',
            [W7] = 'a_f_y_beach_01',
            [W8] = 'a_f_y_bevhills_04',
            [W9] = 'a_f_y_clubcust_01',
            [W10] = 'a_f_y_clubcust_02',
            [W11] = 'a_f_y_clubcust_03',
            [W12] = 'a_f_y_eastsa_03',
            [W13] = 'a_f_y_hippie_01',
            [W14] = 'a_f_y_hipster_03',
            [W15] = 'a_f_y_topless_01',
            [W16] = 'cs_mrsphillips',
            [W17] = 'csb_stripper_01',
            [W18] = 'csb_stripper_02',
            [W19] = 'g_f_y_lost_01',
            [W20] = 'mp_f_cocaine_01',
            [W21] = 'mp_f_deadhooker',
            [W22] = 'mp_f_forgery_01',
            [W23] = 'mp_f_stripperlite',
            [W24] = 's_f_y_hooker_01',
            [W25] = 's_f_y_hooker_02',
            [W26] = 's_f_y_hooker_03',
            [W27] = 's_f_y_stripper_02',
            [W28] = 'ig_djblamadon',
            [W29] = 'ig_mrs_thornhill',
            [W30] = 'u_f_y_corpse_01',
            [W31] = 'u_f_y_danceburl_01',
            [W32] = 'u_f_y_dancelthr_01',
            [W33] = 'u_f_y_dancerave_01',
            [W34] = 'u_f_o_carol',
            [W35] = 'u_f_o_eileen',
        },}

    }
}
Config.PedBehavior{
    Aggressive = {AddEventHandler('CEventShockingRunningPed', function (name, args)
      end)}
    Flee = {AddEventHandler('CEventDataResponseTaskFlee', function (name, args)
    end)}
    Ashamed = {AddEventHandler('CEventDataResponseTaskShockingEventHurryAway', function (name, args)
    end)}
    Calm = {AddEventHandler('CEventDataResponseTaskWalkAway', function (name, args)
    end)}

}
Config.Reward{
    --select reward based on scenario
    --give 30 seconds after scenario initiation, cancel if player death.
    Everything = {200 dollars per mile}
    RewardVagrancy = {
        weed
        oxy
        coke
        turd
        alcohol
        dead animal
        materials
        gun
        rottenfoods
        meth products
        --copy garbage table

    },
    RewardFarmerTaboo = {
        cigar
        alcohol
        animal meat
        farmer ingredients
        flashlight
        materials
        rottenfoods
    },
    RewardHankyPanky = {
        condom
        underwear
        dress
        turd
        drugs
        materials
        alcohol
        bras
        --copy garbage table

    },
    RewardOcean = {
        fish
        treasureChest
        jewelery
        gun
        broken stuff
        watch
    },
    RewardPool = {        
        fish
        jewelery
        watch
        turd
        underwear
        alcohol

    },
    RewardInfestation = {
        dead rat
    },
    RewardAnimal = {
        animalskins
        animalmeat
        foods
        rottenfoods
        --copy garbage table
    },
}
Config.EndJob{}