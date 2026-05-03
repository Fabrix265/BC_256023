// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Intro{

    uint256 public cantidad;
    string public nombre = "upao";

    constructor(uint256 _valorCantidad){
        cantidad = _valorCantidad;
    }

    function cambiarCantidad(uint256 _cantidad) public {
        cantidad = _cantidad;
    }

    function obtenerCantidad() public view returns (uint256){
        return cantidad;
    }
}