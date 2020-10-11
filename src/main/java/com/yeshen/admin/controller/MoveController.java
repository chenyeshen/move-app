package com.yeshen.admin.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yeshen.admin.entity.Carousel;
import com.yeshen.admin.entity.MoveHot;
import com.yeshen.admin.model.RespBean;
import com.yeshen.admin.service.CarouselService;
import com.yeshen.admin.service.MoveHotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/move")
public class MoveController {
    @Autowired
    private MoveHotService moveHotService;

    /**
     * 热门超英
     * @return
     */
    @GetMapping("/list")
    public RespBean list() {
        List<MoveHot> moveHotList = moveHotService.list();
        if (moveHotList.size() > 0) {
            return RespBean.ok("成功", moveHotList);
        }
        return RespBean.error("数据为空");
    }

    /**
     *  热门预告   视频.mp4资源列表
     * @return
     */
    @GetMapping("/trailer")
    public RespBean trailerList(){
        Page<MoveHot> moveHotPage = new Page<>(1, 4);
        moveHotService.page(moveHotPage);
        List<MoveHot> moveHotList = moveHotPage.getRecords();
        if (moveHotList.size()>0){
            return  RespBean.ok("成功",moveHotList);
        }
        return  RespBean.error("数据为空");

    }
    /**
     * 猜你喜欢  随机获取数据列表
     * @return
     */
    @GetMapping("/movelikes")
    public RespBean movelikes(){
        List<MoveHot> moveHotList = moveHotService.selectRandList();
        if (moveHotList.size()>0){
            return  RespBean.ok("成功",moveHotList);
        }
        return  RespBean.error("数据为空");

    }

    /**
     * 搜索列表
     * @param name
     * @return
     */
    @GetMapping("/search")
    public RespBean search(@RequestParam String name){
        List<MoveHot> moveHotList = moveHotService.search(name);
        if (moveHotList.size()>0){
            return  RespBean.ok("成功",moveHotList);
        }
        return  RespBean.error("数据为空");

    }

    /**
     * 根据id获取影片详情
     * @param id
     * @return
     */
    @GetMapping("/getMove")
    public RespBean getMoveById(@RequestParam Integer id){
        MoveHot moveHot = moveHotService.selectMoveById(id);
        if (moveHot!=null){
            return  RespBean.ok("成功",moveHot);
        }
        return  RespBean.error("数据为空");

    }
}
