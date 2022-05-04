// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


contract ZombieFactory {                // Chap 2. ZombieFactory라는 컨트랙트를 만들었음!

    uint public dnaDigits = 16;                
    // Chap 3. uint 자료형으로 dnaDigits라는 변수를 정의했음 (크립토좀비에서는 언급 안되지만, public/private 표시를 해줘야 vscode에서 오류가 안 남)

    uint public dnaModulus = 10 ** dnaDigits;       
    //Chap 4. 수학연산자를 이용해 dnaModulus 변수를 정의했음. ** 문장 맨 끝에 ;;;;;; 좀 잊지말자! **
    //Line 최대 길이 150자인듯. 주석때문에 오류 뿜네 ㅋㅋㅋ
    
}