package com.yeshen.admin.service;

import com.yeshen.admin.entity.MoveHot;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MoveHotService extends IService<MoveHot>{

    List<MoveHot>  selectRandList();

    List<MoveHot> search(String name);

    MoveHot selectMoveById(Integer id);

}
