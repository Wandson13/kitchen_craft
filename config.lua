cfg = {}

cfg.locals = {
    ["lucky-plucker"] = {
        cds = {-1714.16, -1034.63, 14.06 },
        perm = { enabled = false, perm = "" },
        text = "Pressione ~b~E ~w~para abrir a cozinha do Centro Paulista",
        recipes = { "xburguer","hotdog","batata"  }
    },

    ["lucky-pluck"] = {
        cds = { -1729.2, -1048.0, 18.2 },
        perm = { enabled = false, perm = "" },
        text = "Pressione ~b~E ~w~para abrir a cozinha do Centro Paulista",
        recipes = { "xburguer","hotdog","batata" }
    },

}

cfg.recipes = {
    ["xburguer"] = {
        qtd = 1,
        image = "https://cdn.discordapp.com/attachments/882815443608408094/959954792518668298/xburguer.png",
        necessary = {
            ["pao"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959960091262611556/pao.png",
                qtd = 2,
            },
            ["carnecru"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959957923239444541/carne.png",
                qtd = 2,
            },
            ["salada"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959958274441117766/salada.png",
                qtd = 3,
            },
            ["milho"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959959516697485352/milho.png",
                qtd = 10,
            },
            ["ketchup"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959958854060355665/ketchup.png",
                qtd = 3,
            },
            ["maionese"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959959101557850133/maionese.png",
                qtd = 3,
            },
        },
    },

    ["hotdog"] = {
        qtd = 1,
        image = "https://cdn.discordapp.com/attachments/882815443608408094/959955248410144798/hotdog.png",
        necessary = {
            ["pao"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959960091262611556/pao.png",
                qtd = 2,
            },
            ["salsicha"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959960804747255899/salsicha.png",
                qtd = 2,
            },
            ["salada"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959958274441117766/salada.png",
                qtd = 3,
            },
            ["milho"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959959516697485352/milho.png",
                qtd = 10,
            },
            ["ketchup"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959958854060355665/ketchup.png",
                qtd = 3,
            },
            ["maionese"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959959101557850133/maionese.png",
                qtd = 3,
            },
        },
    },
    ["batata"] = {
        qtd = 1,
        image = "https://cdn.discordapp.com/attachments/882815443608408094/959955248145920020/batataf.png",
        necessary = {
            ["batatacru"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959961573982601326/batata.png",
                qtd = 5,
            },
            ["sal"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959961837003218954/sal.png",
                qtd = 1,
            },
            ["oleo"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959962132940742656/oleo.png",
                qtd = 1,
            },
            ["ketchup"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959958854060355665/ketchup.png",
                qtd = 3,
            },
            ["maionese"] = {
                image = "https://cdn.discordapp.com/attachments/882815443608408094/959959101557850133/maionese.png",
                qtd = 3,
            },
        },
    },
}

return cfg or {}