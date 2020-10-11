package com.yeshen.admin.mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.yeshen.admin.entity.MoveHot;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MoveHotMapper extends BaseMapper<MoveHot> {
    List<MoveHot> selectRand();

    List<MoveHot> selectByNameLike(@Param("likeName")String likeName);

    MoveHot selectById(@Param("id")Integer id);



}