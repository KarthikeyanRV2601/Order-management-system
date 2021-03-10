import React from 'react'

const WarehouseComp = () => {
    return (
        <div className='container content'>
            <h3>Welcome supervisor. Here are the product categories</h3>
            <div className='row warehouse'>
                <div className="row">
                    <div className="col-sm-4">
                        <div className="card">
                            <img className="card-img-top warehouse-types" src="download.jpg" alt="Card cap" />
                            <div className="card-body">
                                <h5 className="card-title">Building materials</h5>
                                
                                <a href="/buildingmat" className="btn btn-primary">Details</a>
                            </div>
                        </div>
                    </div>
                    <div className="col-sm-4">
                        <div className="card">
                            <img className="card-img-top warehouse-types" src="electrical.jpg" alt="Card cap" />
                            <div className="card-body">
                                <h5 className="card-title">Electrical</h5>
                                
                                <a href="/" className="btn btn-primary">Details</a>
                            </div>
                        </div>
                    </div>
                    <div className="col-sm-4">
                        <div className="card">
                            <img className="card-img-top warehouse-types" src="pipes.jpg" alt="Card cap" />
                            <div className="card-body">
                                <h5 className="card-title">Pipes and Fittings</h5>
                                <a href="/" className="btn btn-primary">Details</a>
                            </div>
                        </div>
                    </div>	 
                </div>
            </div>
        </div>
    )
}

export default WarehouseComp
