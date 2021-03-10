import React from 'react'

const Salesperson = () => {
    return (
        <div className='container content'>
                <h3 className='rect-box'>Welcome salesperson. Here are your products</h3>
                <div className="row">
                    <div className="col-sm-4">
                        <div className="card">
                            <img className="card-img-top" src="cement.jpg" alt="a" />
                            <div className="card-body">
                                <h5 className="card-title">Cement</h5>
                                <p className="card-text">In stock: 10 left</p>
                                <a href="/" className="btn btn-primary">Details</a>
                            </div>
                        </div>
                    </div>
                    <div className="col-sm-4">
                        <div className="card">
                            <img className="card-img-top" src="paint.jpg" alt="a" />
                            <div className="card-body">
                                <h5 className="card-title">Red paint</h5>
                                <p className="card-text">In stock: 25 left</p>
                                <a href="/" className="btn btn-primary">Details</a>
                            </div>
                        </div>
                    </div>
                    <div className="col-sm-4">
                        <div className="card">
                            <img className="card-img-top" src="fan.jpg" alt="a" />
                            <div className="card-body">
                                <h5 className="card-title">Havell's Fan</h5>
                                <p className="card-text red">Out of stock</p>
                                <a href="/" className="btn btn-primary">Details</a>
                            </div>
                        </div>
                    </div>
                    <div className="col-sm-4">
                        <div className="card">
                            <img className="card-img-top" src="rods.png" alt="a" />
                            <div className="card-body">
                                <h5 className="card-title">TMT rods</h5>
                                <p className="card-text">In stock: 250 left</p>
                                <a href="/" className="btn btn-primary">Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    )
}

export default Salesperson
