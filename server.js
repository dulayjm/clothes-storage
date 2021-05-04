import express from 'express'
import cors from 'cors'
import mongoose from 'mongoose'
const app = express()
const port = process.env.PORT|| 80
const uri = "mongodb+srv://jacob_prince_slu:closet1@closet.mzgmn.mongodb.net/Clothes?retryWrites=true&w=majority"
mongoose.connect(uri, { useNewUrlParser: true, useCreateIndex: true, useUnifiedTopology: true }, err => {
    if (err) console.log(err)
    else console.log('Successfully connected to database')
})
//create new user function
async function newUser(req,res, next) {
    console.log(req)
    const {id, name, username, password}
    const user = new db.User({
        id,
        name,
        username,
        password
    })
    await user.save()
    res.status(200).json({
        status: 'success',
        message: `Created new user`
    })
}
async function newBelt(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const belt = new db.Belts({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await belt.save()
    res.status(200).json({
        status: 'success',
        message: `Created new belt.`
    })
}
async function newBodyJewelry(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const bodyJewelry = new db.BodyJewelry({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await bodyJewelry.save()
    res.status(200).json({
        status: 'success',
        message: `Created new body jewelry.`
    })
}
async function newBra(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const bra = new db.Bras({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await bra.save()
    res.status(200).json({
        status: 'success',
        message: `Created new bra.`
    })
}
async function newEarrings(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const earring = new db.Earrings({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await earring.save()
    res.status(200).json({
        status: 'success',
        message: `Created new earrings.`
    })
}
async function newFacemask(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const facemask = new db.Facemasks({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await facemask.save()
    res.status(200).json({
        status: 'success',
        message: `Created new facemask.`
    })
}
async function newHat(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const hat = new db.Hats({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await hat.save()
    res.status(200).json({
        status: 'success',
        message: `Created new hat.`
    })
}
async function newJacket(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const jacket = new db.Jackets({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await jacket.save()
    res.status(200).json({
        status: 'success',
        message: `Created new jacket.`
    })
}
async function newNecklace(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const necklace = new db.Necklaces({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await necklace.save()
    res.status(200).json({
        status: 'success',
        message: `Created new necklace.`
    })
}
async function newPants(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const pants = new db.Pants({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await pants.save()
    res.status(200).json({
        status: 'success',
        message: `Created new pants.`
    })
}
async function newRing(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const ring = new db.Rings({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await ring.save()
    res.status(200).json({
        status: 'success',
        message: `Created new ring.`
    })
}
async function newShirt(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const shirt = new db.Shirts({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await shirt.save()
    res.status(200).json({
        status: 'success',
        message: `Created new shirt.`
    })
}
async function newShoes(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const shoes = new db.Shoes({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await shoes.save()
    res.status(200).json({
        status: 'success',
        message: `Created new shoes.`
    })
}
async function newShorts(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const shorts = new db.Shorts({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await shorts.save()
    res.status(200).json({
        status: 'success',
        message: `Created new shorts.`
    })
}
async function newSock(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const sock = new db.Socks({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await sock.save()
    res.status(200).json({
        status: 'success',
        message: `Created new socks.`
    })
}
async function newSweatshirt(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const sweatshirt = new db.Sweatshirts({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await sweatshirt.save()
    res.status(200).json({
        status: 'success',
        message: `Created new sweatshirt.`
    })
}
async function newSwimwear(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const swimwear = new db.Swimwear({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await swimwear.save()
    res.status(200).json({
        status: 'success',
        message: `Created new swimwear.`
    })
}
async function newTie(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const tie = new db.Ties({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await tie.save()
    res.status(200).json({
        status: 'success',
        message: `Created new tie.`
    })
}
async function newUnderwear(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const underwear = new db.Underwear({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await underwear.save()
    res.status(200).json({
        status: 'success',
        message: `Created new underwear.`
    })
}