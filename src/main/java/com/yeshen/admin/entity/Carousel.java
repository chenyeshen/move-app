package com.yeshen.admin.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@ApiModel(value="com-yeshen-admin-entity-Carousel")
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "carousel")
public class Carousel {
    /**
     * id主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value="id主键")
    private Integer id;

    /**
     * 图片id
     */
    @TableField(value = "move_id")
    @ApiModelProperty(value="图片id")
    private String moveId;

    /**
     * 图片地址
     */
    @TableField(value = "image_url")
    @ApiModelProperty(value="图片地址")
    private String imageUrl;

    /**
     * 排序
     */
    @TableField(value = "sort")
    @ApiModelProperty(value="排序")
    private Integer sort;

    /**
     * 是否显示
     */
    @TableField(value = "is_show")
    @ApiModelProperty(value="是否显示")
    private Integer isShow;
}