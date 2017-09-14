package com.ruanko.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruanko.dao.UserMapper;
import com.ruanko.entity.Attachment;
import com.ruanko.service.AttachmentService;


@Service("attachmentService")
public class AttachmentServiceImpl extends BaseServiceImpl<Attachment> implements AttachmentService {

	@Autowired
	protected UserMapper usersMapper;

}
