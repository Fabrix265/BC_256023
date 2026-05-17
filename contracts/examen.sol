// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract StreamingMusical256023 {

    struct Cancion {
        uint256 id;
        string titulo;
        uint256 duracion;
    }

    Cancion[] public canciones;
    address public dirContrato;

    constructor() {
        console.log("Ejecutado por: 256023 - Fabrizio Vidal Rodriguez");
        dirContrato = address(this);
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _duracion) public {
        console.log("Ejecutado por: 256023 - Fabrizio Vidal Rodriguez");
        canciones.push(Cancion(_id, _titulo, _duracion));
    }

    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 256023 - Fabrizio Vidal Rodriguez");
        return canciones.length;
    }
}