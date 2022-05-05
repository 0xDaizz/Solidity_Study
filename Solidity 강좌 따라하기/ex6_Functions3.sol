// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


contract lec6 {

    /*
    이번 시간에 다룰 함수 양식은 
    function get_a() view external returns (uint256)

    이런 식의 함수. 

    view, pure는 public과 같은 접근 제한자 앞 뒤 어디든 붙여도 됨.

        (1) View는 Storage state를 읽을 수 있지만, 값을 변경할 수는 없다 (Read only)

        (2) Pure는 읽기와 쓰기가 둘 다 불가능하다. (R/W unable)

    여기서 Storage state가 의미하는 바를 봐야하는데 : 

    function 밖에서 정의된 것들은 storage에 저장이 된다. 

    예를들어서 진행해 보자. */

    uint256 public a = 1;

    // 함수 밖에서 a라는 변수를 정의했다. -> Storage state에 있음

    function read_a() public view returns(uint256) {
        return a + 2;
    }

    /* 이렇게 함수를 정의하면 :

    read_a()라는 함수를 정의했는데, 이 함수는 a값을 사용함.

    그런데 이 a값은 함수 바깥에서 정의되어 있으니 storage state를 읽었음 -> view가 필수! */

    //-----------------------------------------------------------------------------------------

    /* 만약!! function 함수 안에서 a값을 새롭게 정의하게 된다면? (값을 바꾼다면?)

    -> view를 지우고 아무것도 안 쓰면 된다. -- 함수 밖에서 정의된 a를 사용하지만, view와는 달리 **수정하기** 때문. */

    function read_a1() public returns(uint256) {
        a = 5;
        return a + 7;
    }

    // 이 함수 read_a1()의 경우에는 위쪽에서 정의한 a를 그대로 쓰지 않고(not read only) 새로운 값으로 a를 바꿨음! 따라서 view를 쓰면 안됨.


}