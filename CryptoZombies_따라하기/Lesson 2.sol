// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


// Chap 1. 레슨 2로 진입. 앱을 멀티플레이어 게임으로 만들고, 좀비를 좀 더 재미있는 방식으로 생성할 것!(by 다른 생물체를 먹음!)

// Chap 2. 먼저 DB에 저장된 좀비들에게 주인을 설정하고, 게임을 멀티플레이어 게임으로 만들 것임.

//Lesson 1에서 했던 것들을 주석 빼고 그대로 가져오면 다음과 같음

contract ZombieFactory {

    event NewZombie(uint zombieId, string name, uint dna);

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    // 여기서 매핑 선언

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
        uint id = zombies.length - 1;


        emit NewZombie(id, _name, _dna);
    } 

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

}
