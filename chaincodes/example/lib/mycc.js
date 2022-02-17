const { Contract } = require('fabric-contract-api');

class MyCC extends Contract { 

    async crearPlanta(ctx, idPlanta, razaPlantas, tipoExterior) {
        console.log("Paso por aqui");
        const planta = {
            raza: razaPlantas,
            tipo: tipoExterior
        
        }
        const plantaExists = await ctx.stub.getState(idPlanta);
        if (plantaExists || plantaExists.length != 0) { 
            throw new Error("La planta ya existe");
        }
        const plantaString = JSON.stringify(planta);
        await ctx.stub.putState(idPlanta, Buffer.from(plantaString));
        return "Acabas de crear una planta con el id" + idPlanta;

    }

}

module.exports = MyCC;