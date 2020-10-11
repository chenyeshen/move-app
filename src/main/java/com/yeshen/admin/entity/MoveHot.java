package com.yeshen.admin.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@ApiModel(value="com-yeshen-admin-entity-MoveHot")
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "move_hot")
public class MoveHot {
    @TableId(value = "id", type = IdType.INPUT)
    @ApiModelProperty(value="")
    private Integer id;

    @TableField(value = "name")
    @ApiModelProperty(value="")
    private String name;

    @TableField(value = "poster")
    @ApiModelProperty(value="")
    private String poster;

    @TableField(value = "cover")
    @ApiModelProperty(value="")
    private String cover;

    @TableField(value = "trailer")
    @ApiModelProperty(value="")
    private String trailer;

    @TableField(value = "score")
    @ApiModelProperty(value="")
    private String score;

    @TableField(value = "prised_counts")
    @ApiModelProperty(value="")
    private String prisedCounts;

    @TableField(value = "basic_info")
    @ApiModelProperty(value="")
    private String basicInfo;

    @TableField(value = "release_date")
    @ApiModelProperty(value="")
    private Date releaseDate;

    @TableField(value = "totol_time")
    @ApiModelProperty(value="")
    private String totolTime;

    @TableField(value = "plot_desc")
    @ApiModelProperty(value="")
    private String plotDesc;

    @TableField(value = "directors")
    @ApiModelProperty(value="")
    private String directors;

    @TableField(value = "actors")
    @ApiModelProperty(value="")
    private String actors;

    @TableField(value = "plot_pics")
    @ApiModelProperty(value="")
    private String plotPics;

    @TableField(value = "create_time")
    @ApiModelProperty(value="")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date createTime;
}