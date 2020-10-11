package com.yeshen.admin.controller;

import com.yeshen.admin.entity.Carousel;
import com.yeshen.admin.model.RespBean;
import com.yeshen.admin.service.CarouselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/carousel")
public class CarouselController {

    @Autowired
    private CarouselService carouselService;
    @GetMapping("/list")
    public RespBean list(){
        List<Carousel> carouselList = carouselService.list();
        if (carouselList.size()>0){
            return  RespBean.ok("成功",carouselList);
        }
        return  RespBean.error("数据为空");

    }

}
