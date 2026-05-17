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

    constructor() {
        console.log("Ejecutado por: 256023 - Fabrizio Vidal Rodriguez");
    }

}