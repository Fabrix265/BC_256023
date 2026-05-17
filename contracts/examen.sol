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

    mapping(uint256 => Cancion) public canciones;
    
    uint256 public cantidad;
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
        
        require(canciones[_id].id == 0, "El ID de la cancion ya existe");

        canciones[_id] = Cancion(_id, _titulo, _duracion, _estado);
        
        cantidad++;
    }

    function contarElementos() public view registrarEjecucion returns (uint256) {
        return cantidad;
    }

    function inactivarElemento(uint256 _id) public registrarEjecucion {
        require(canciones[_id].id != 0, "El ID introducido no existe");
        canciones[_id].estado = false;
    }

    function pintarElementosImpares() public view registrarEjecucion {
        for (uint256 i = 1; i <= cantidad; i++) {
            if (canciones[i].id % 2 != 0) {
                console.log("Cancion ID impar:", canciones[i].id, canciones[i].titulo);
            }
        }
    }
}