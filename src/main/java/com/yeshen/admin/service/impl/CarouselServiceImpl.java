package com.yeshen.admin.service.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.yeshen.admin.mapper.CarouselMapper;
import com.yeshen.admin.entity.Carousel;
import com.yeshen.admin.service.CarouselService;
@Service
public class CarouselServiceImpl extends ServiceImpl<CarouselMapper, Carousel> implements CarouselService{

}
