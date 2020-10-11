package com.yeshen.admin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.yeshen.admin.mapper.MoveHotMapper;
import com.yeshen.admin.entity.MoveHot;
import com.yeshen.admin.service.MoveHotService;
@Service
public class MoveHotServiceImpl extends ServiceImpl<MoveHotMapper, MoveHot> implements MoveHotService{

    @Autowired
    private MoveHotMapper moveHotMapper;

    @Override
    public List<MoveHot> selectRandList() {
        return moveHotMapper.selectRand();
    }

    @Override
    public List<MoveHot> search(String name) {
        return moveHotMapper.selectByNameLike(name);
    }

    @Override
    public MoveHot selectMoveById(Integer id) {
        return moveHotMapper.selectById(id);
    }
}
