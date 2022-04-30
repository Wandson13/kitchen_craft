window.addEventListener('message', function(event) {
    switch (event.data.action) {
        case "open":
            $(".kitchen-mapree-container").fadeIn();
            //$('.kitchen-mapree-title').text(`COZINHA - ${event.data.name.toUpperCase()}`)
            $(".kitchen-mapree-title").data("name",event.data.name)
            let recipesTable = event.data.recipes_config
            
            for (let y in event.data.recipes) {
                let x = event.data.recipes[y]
                let necessary = ""
                for (let i in recipesTable[x].necessary) {
                    necessary = `${necessary}\n<div class="kitchen-mapree-recipe-item" style="background-image: url(${recipesTable[x].necessary[i].image});"></div>`
                }

                // console.log(necessary)
                // console.log(JSON.stringify(event.data.recipes_config["frango"]))
                $(".kitchen-mapree-factory").append(`
                <div class="kitchen-mapree-recipe">
					<div class="kitchen-mapree-recipe-image" style="background-image: url(${recipesTable[x].image});" ></div>
					<div class="kitchen-mapree-recipe-others">
						<div class="kitchen-mapree-recipe-name">${x}</div>
						<div class="kitchen-mapree-recipe-items">
                            ${necessary}
						</div>
					</div>
					<div class="kitchen-mapree-recipe-produce">
						<div class="kitchen-mapree-recipe-produce-button" data-recipe="${x}" onclick="recipeOn(this)">PRODUZIR</div>
					</div>
				</div>
                `)
            }

          
            break;
    
        default:
            break;
    }
});

$(document).on("keydown", function (cb) {
    switch (cb.code) {
        case "Escape":
           
            $(".kitchen-mapree-container").fadeOut()
            $(".kitchen-mapree-factory").html("")
                $.post("https://kitchen_craft/close");
            break;
    }
});

function recipeOn(element){
    $(".kitchen-mapree-container").fadeOut()
    $(".kitchen-mapree-factory").html("")
    $.post("https://kitchen_craft/select_recipe", JSON.stringify({ recipe: $(element).data("recipe") }));
}