// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract StreamingMusical256023 {

    struct Cancion {
        uint256 id;
        string titulo;
        uint256 duracion;
        bool estado; 
    }

    Cancion[] public canciones;
    address public dirContrato;

    modifier registrarEjecucion() {
        console.log("Ejecutado por: 256023 - Fabrizio Vidal Rodriguez");
        _;
    }

    constructor() {
        console.log("Ejecutado por: 256023 - Fabrizio Vidal Rodriguez");
        dirContrato = address(this);
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _duracion, bool _estado) public registrarEjecucion {
        require(_duracion > 0, "La duracion debe ser mayor a cero segundos");

        for (uint256 i = 0; i < canciones.length; i++) {
            require(canciones[i].id != _id, "El ID de la cancion ya existe");
        }

        canciones.push(Cancion(_id, _titulo, _duracion, _estado));
    }

    function contarElementos() public view registrarEjecucion returns (uint256) {
        return canciones.length;
    }

    function inactivarElemento(uint256 _posicion) public registrarEjecucion {
        require(_posicion < canciones.length, "La posicion introducida no existe en el arreglo");
        canciones[_posicion].estado = false;
    }

    function pintarElementosImpares() public view registrarEjecucion {
        for (uint256 i = 0; i < canciones.length; i++) {
            if (canciones[i].id % 2 != 0) {
                console.log("Cancion ID impar:", canciones[i].id, canciones[i].titulo);
            }
        }
    }
}