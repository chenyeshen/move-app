package com.yeshen.admin;

import com.yeshen.admin.entity.MoveHot;
import com.yeshen.admin.mapper.MoveHotMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class AdminApplicationTests {

    @Autowired
    private MoveHotMapper moveHotMapper;
    @Test
    void contextLoads() {
        List<MoveHot> moveHotList = moveHotMapper.selectRand();
        System.out.println(moveHotList);
    }

}
