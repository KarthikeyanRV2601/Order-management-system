import React, { useState } from 'react';
import BuildingMatComp from '../components/BuildingMatComp';
import Navbar from '../components/Navbar';

const BuildingMat = () => {
    const [products, setProducts] = useState([
        {
            'id': 1,
            'title': 'Cement',
            'stock': 10,
            'image': 'cement.jpg'
        },
        {
            'title': 'Red Paint',
            'stock': 25,
            'image': 'paint.jpg',
            'id' :2
        },
        {
            'title': "Havell's fan",
            'stock': 0,
            'image': 'fan.jpg',
            'id': 3
        },
        {
            'title': 'TMT rods',
            'stock': 250,
            'image': 'rods.png',
            'id' : 4
        }
    ])

    return (
        <div>
            <Navbar />
            <BuildingMatComp products={{products, setProducts }}/>
        </div>
    )
}

export default BuildingMat
