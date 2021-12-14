'use strict'

const {Contract} = require('fabric-contract-api')

class ExampleSACC extends Contract {
    async put(ctx, key, value){
        await ctx.stub.putState(key, value);
    }

    async get(ctx, key){
        const value = await ctx.stub.getState(key)
        if(!value || value.length === 0){
            throw new Error(`The key ${key} has not value`)
        }
        return value.toString();
    }

}

module.exports = ExampleSACC