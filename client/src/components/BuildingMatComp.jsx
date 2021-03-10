import React, { useState } from 'react';
// import axios from 'axios';
import image from '../apis/image';

const BuildingMatComp = (props) => {


    const [name, setName] = useState("");
    const [stock, setStock] = useState("");
    const [img, setImg] = useState("");

    const onSubmit = (event) => {
        event.preventDefault();

        if(!isNaN(stock) && isNaN(name)) {

            const data = new FormData();
            data.append('file', img);

            var res = (async function() {
            try {
                const response = await image.post("/upload", data)
                return response
            } catch (error) {
                console.log("l")
            }
            })()
            
            if (res)
            {
                const newObj = {
                    'id': props.products.products.length + 1,
                    'title': name,
                    'stock':  stock,
                    'image' : img.name
                }
                console.log(newObj)
                props.products.setProducts([...props.products.products,newObj])
            }
        }
        else {
            alert('Enter valid info')
        }
    }

    const handleFile = (event) => {
        // event.preventDefault();
        setImg(event.target.files[0])
    }

    return (
        <div className='container content'>
            <h3 className='rect-box'>Here are the products under 'Building Material' category</h3>
            <div className="row">
                {props.products.products && props.products.products.map(item => {
                    return (
                        <div key={item.id} className="col-sm-4">
                            <div className="card">
                                    <div>
                                        <img className="card-img-top" src={item.image} alt="Card cap" />
                                        <div className="card-body">
                                            <h5 className="card-title">{item.title}</h5>
                                            <p className="card-text">In stock: {item.stock} left</p>
                                            <a href="/" className="btn btn-primary">Details</a>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    )   
                })}
            </div>

            <h3 className='rect-box content'>Add new product</h3>
            <form className='product-form' encType='multipart/form-data' onSubmit={onSubmit}>
                <div className="form-group row">
                    <label htmlFor="inputEmail3" className="col-sm-2 col-form-label">Name of Product</label>
                    <div className="col-sm-10">
                        <input 
                            type="text" 
                            className="form-control" 
                            id="name" 
                            placeholder="Name"
                            value = {name}
                            onChange={e => setName(e.target.value)}/>
                    </div>
                </div>
                <div className="form-group row">
                    <label htmlFor="inputPassword3" className="col-sm-2 col-form-label">Stock Left</label>
                    <div className="col-sm-10">
                    <input 
                        type="text" 
                        className="form-control" 
                        id="stock" 
                        placeholder="Stock Left" 
                        value={stock}
                        onChange={e => setStock(e.target.value)}/>
                    </div>
                </div>
                <div className="form-group">
                    <label htmlFor="exampleFormControlFile1">Image </label>
                    <input 
                        type="file" 
                        className="form-control-file" 
                        id="image"
                        onChange={handleFile} 
                        />
                </div>
                <div className="form-group row">
                    <div className="col-sm-10">
                    <button type="submit" className="btn btn-primary">Add product</button>
                    </div>
                </div>
            </form>



        </div>
    )
}

export default BuildingMatComp
