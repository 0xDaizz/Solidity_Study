// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.13; // p 대문자로 쓰면 안됨!!!!!


contract Lecture2 {

    // data type에는 boolean, bytes, address, uint

    // Reference type에는 string, Arrays, struct

    // mapping type도 있음

    //여기서는 data type부터 이야기해볼 것

    bool public a = false;

    bool public a1 = !false; //=true
    
    bool public a2 = false || true; //=true (OR 연산자)
    
    bool public a3 = false && true; //=false (AND 연산자)
    
    bool public a4 = false == true; //=false (== 연산자)


    //이제 Byte. 1~32바이트까지 저장 가능

    bytes4 public bt = 0x12345678;  // 앞에 bytes4로 바이트크기 지정 가능. 0x 12345678 -> 두 자마다 1바이트니까 4바이트

    bytes public bt2 = "STRING"; // 그냥 bytes로만 하고 스트링을 집어넣을 수도 있음. but solidity에서 string의 사용은 지양하는 편(가스비)


    //Address는 생소한 개념. 계좌번호. 이더 주소. 0x~~~~~
    
    address public addr = 0xd9145CCE52D386f254917e481eB44e9943F39138; //20바이트(40자)


    //int, uint -> 정수와 음이 아닌 정수. 범위 차이는 숙지할 필요 있는듯

    //int8 -> -2^7 ~ 2^7 -1 범위
    
    //uint8 -> 0 ~ 2^8 -1 범위인 것 확인

    int8 public it = -7;    

    uint256 public uit = 12345;



}