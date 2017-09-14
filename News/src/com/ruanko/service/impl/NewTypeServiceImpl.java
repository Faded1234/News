package com.ruanko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruanko.dao.NewTypeMapper;
import com.ruanko.dao.UserMapper;
import com.ruanko.entity.NewType;
import com.ruanko.service.NewTypeService;


@Service("newTypeService")
public class NewTypeServiceImpl extends BaseServiceImpl<NewType> implements NewTypeService {

	@Autowired
	protected NewTypeMapper newTypeMapper;


}
