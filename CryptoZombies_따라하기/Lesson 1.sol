// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


contract ZombieFactory {                // Chap 2. ZombieFactory라는 컨트랙트를 만들었음!

    // Chap 13-1. 이벤트를 선언!
    event NewZombie(uint zombieId, string name, uint dna);

    

    uint public dnaDigits = 16;                
    // Chap 3. uint 자료형으로 dnaDigits라는 변수를 정의했음 (크립토좀비에서는 언급 안되지만, public/private 표시를 해줘야 vscode에서 오류가 안 남)

    uint public dnaModulus = 10 ** dnaDigits;       
    //  Chap 4. 수학연산자를 이용해 dnaModulus 변수를 정의했음. ** 문장 맨 끝에 ;;;;;; 좀 잊지말자! **
    
    struct Zombie {
        string name;
        uint dna;
    }
    // Chap 5. 구조체 : struct를 사용해서 Zombie라는 구조체를 정의하고, 그 구조체의 특성 name과 dna의 자료형을 지정했다.
    /* 마치 사람 신상정보처럼.
        struct Human {
            세글자 name;
            11자리 숫자 phone_number;
            주소 address;
        }
        뭐 이런식으로....
    */

    Zombie[] public zombies;
    // Chap 6. 배열 : 정적배열 = 안에 들어있는 개수가 고정된 배열, 동적배열 = 개수가 고정되지 않은 배열.
    // uint[2] fixedArray; -> fixedArray라는 배열을 만들 건데, 그 안에 들어갈 자료는 2개가 가능하고, 그 자료형은 uint임!

    function _createZombie(string storage _name, uint _dna) private {   // Chap 9. public/private : private로 함수를 선언할 때에는 함수 명 앞에 _처리를 해주는 게 관례!! -- Storage 안쓰면 오류나길래..추가

        // Chap 7. 함수 만들기. 
        // 괄호 안에는 변수 들어가는 건데, 마치 f(x, y) 처럼 말이다. 
        // 하지만 수학에서랑은 다르게 변수의 자료형이 중요함. 따라서 (x, y) 대신 (숫자 x, 문자열 y) 이런 식으로 해주는거.

        //zombies.push(Zombie(_name, _dna)); ----> 아래 13-2에서 업그레이드시켰기 때문에 삭제!

            /* Chap 8. 구조체와 배열 활용
            함수 만들고 있기 때문에 일반화하여서, 이름, dna특성이 5에 해당하는 새 구조체 Zombie를 새로 형성
            이렇게 새로 만든 좀비 구조체(개체)를 zombies라는 배열의 맨 뒤에 추가하는 명령어.(array.push)
            <array>.push(<struct>(name, dna)); 뭐 이런 꼴.*/


        // Chap 13-2. 이벤트를 실행!
        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        // 아래의 이벤트 실행을 위해서는 id가 필요한데, 위의 zombies 배열 중 가장 마지막에 추가된 좀비를 가져와야 하므로, 
        // 인덱스 -1을 이용해 가장 나중에 추가된 좀비를 불러오는 것.

        NewZombie(id, _name, _dna);
        //이벤트 실행!


    }

    function _generateRandomDna(string storage _str) private view returns (uint) {  //함수명과 () 붙여주고, returns와 ()는 띄어줌
        // Chap 10. 반환값, View와 Pure : 
        // 함수 바깥의 변수를 보지만 변경하진 않을 것이므로 view
        // uint 자료형의 값을 내놓아야 할 것이므로 returns(uint)를 써 줌. (나중에 너 uint형태의 값 내놓아야 돼! 라고 미리 알려주는 느낌.)

        uint rand = uint(keccak256(_str));

        return rand % dnaModulus;

        /*  Chap 11. Keccak256과 형 변환
        keccak256은 해시함수의 일종. string을 256비트인 16진수로 변환
        
        그리고 자료형의 변환을 하려면 50줄처럼 하면 된다. 
        keccak256(_str)은 16진수 숫자이기 때문에, uint 자료형의 rand 변수에 저장되기 위해서는 
        uint(keccak256(_str)) 이런식으로 하면 된다. 

        마지막으로 return에서는 결과를 내놓아야 하는데, 
        결과값으로는 16자리 숫자를 원하기 때문에 
        rand를 dnaModulus(=10^16)으로 나눈 나머지를 return하면 됨.
        왜 return 뒤에 괄호를 안 치는지 모르겠네...*/
    }

    function createRandomZombie(string _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }
    // Chap 12. 좀비의 이름을 입력값으로 받아 랜덤 DNA를 가진 좀비를 만드는 public 함수를 만드는 과정.

    // Chap 13. 이벤트를 선언하고, 실행하는 코드를 삽입 -- 9줄에 이벤트 선언, 






}