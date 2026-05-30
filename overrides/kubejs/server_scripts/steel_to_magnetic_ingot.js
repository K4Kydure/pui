ServerEvents.recipes(event => {
    event.custom({
        type: "create_new_age:energising",
        energy_needed: 10000,
        ingredients: [
            { item: "ad_astra:steel_ingot" }
        ],
        results: [
            { item: "tfmg:magnetic_ingot" }
        ]
    }).id('kubejs:steel_to_magnetic_ingot') // Your chosen custom name
})
