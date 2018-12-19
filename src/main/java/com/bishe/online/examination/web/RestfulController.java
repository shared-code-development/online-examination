package com.bishe.online.examination.web;

import com.bishe.online.examination.entity.TExerciseZone;
import com.bishe.online.examination.service.ITExerciseZoneTestService;
import com.hsy.java.bean.dto.ResponseBodyBean;
import com.hsy.java.bean.web.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author heshiyuan
 * @description <p></p>
 * @path springboot.demo/com.hsy.springboot.demo.jpa.web
 * @date 25/10/2017 4:40 PM
 * @github http://github.com/shiyuan2he
 * @email shiyuan4work@sina.com
 * Copyright (c) 2017 shiyuan4work@sina.com All rights reserved.
 * @price ¥5    微信：hewei1109
 */
@RestController
@RequestMapping("/api/rest")
public class RestfulController extends BaseController{
    @Autowired private ITExerciseZoneTestService exerciseZoneSerivce;

    @RequestMapping(value = "/v1/reg",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseBodyBean<Boolean> reg(@RequestParam(value = "code") Integer code, @RequestParam String name,
                                         @RequestParam Long parentId, @RequestParam(required = false) Integer sortId, String remark){
        return success(exerciseZoneSerivce.createTExerciseZone(code, name, parentId, sortId, remark));
    }

    @RequestMapping(value = "/v1/reg/batch",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseBodyBean<Boolean> batchReg(@RequestParam String json){

        //JsonToBeanUtil.responseJsonToBeanEnhance(json, TExerciseZone.class) ;
        return null;
    }
    @RequestMapping(value = "/v1/delete/{id}",method = RequestMethod.DELETE,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseBodyBean<Boolean> delete(@PathVariable Long id){
        return success(exerciseZoneSerivce.deleteTExerciseZone(id)) ;
    }

    @RequestMapping(value = "/v1/delete/batch",method = RequestMethod.DELETE,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseBodyBean<Boolean> batchDelete(List<Long> ids){
        return success(exerciseZoneSerivce.batchDeleteTExerciseZone(ids));
    }

    @RequestMapping(value = "/v1/update/{id}",method = RequestMethod.PUT,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseBodyBean<Boolean> update(TExerciseZone exerciseZone){
        return success(exerciseZoneSerivce.updateTExerciseZone(exerciseZone));
    }

    @RequestMapping(value = "/v1/update/batch",method = RequestMethod.PUT,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseBodyBean<Boolean> batchUpdate(List<TExerciseZone> list){
        return success(exerciseZoneSerivce.batchUpdateTEerciseZone(list));
    }

    @RequestMapping(value = "/v1/zone/{id}",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseBodyBean<TExerciseZone> getZone(@PathVariable Long id){
        return success(exerciseZoneSerivce.getOne(id)) ;
    }

    @RequestMapping(value = {"/v1/zones","/v1/zones/{offset}/{limit}"},method = RequestMethod.GET)
    public ResponseBodyBean<List<TExerciseZone>> getZones(@PathVariable(required = false) Integer offset,@PathVariable(required = false) Integer limit){
        Page<TExerciseZone> page = exerciseZoneSerivce.getList(offset,limit) ;
        return success();
    }
}
