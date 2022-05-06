// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


// 생성자 constructor : 스마트컨트랙이 생성, 배포, 인스턴스화 될 때 초기값을 설정해주는 용도

contract A {

    string public name;
    uint256 public age;

    constructor (string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }



}

contract B {

    A instance = new A("Alice", 15);


    /* 이런 식으로 컨트랙 A와 B를 만들어 보았음.

    A 컨트랙을 보면, 
    constructor 생성자를 통해서 파라미터인 name과 age를 받아서 값을 넣어주고 있는 모습

    B 컨트랙에서 A를 instance화 하는데, 괄호안에 "Alice, 15" 가 있음.
    이는 A를 인스턴스화해 생성할 때 필요한 초기값! */


    // 더 나아가 보자.

    function change(string memory _name, uint256 _age) public {

        instance.change(_name, _age);
    }

    function get() public view returns(string memory, uint256) {
        return (instance.name(), instance.age());
    }

    // 컨트랙 B에 change함수와 get함수를 추가했음!

    // get함수에서는 리턴할 값이 두 개. returns()의 괄호 사이에 자료형 타입을 넣어줌 (string public, uint256)

    // change를 보면, A의 change를 통해서 constructor를 통해 설정된 age, name을 바꿈.


    // 영상 봐야 할 것 같음




}