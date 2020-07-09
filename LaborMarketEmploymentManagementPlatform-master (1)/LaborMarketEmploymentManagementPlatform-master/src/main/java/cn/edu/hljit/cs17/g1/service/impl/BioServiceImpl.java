package cn.edu.hljit.cs17.g1.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.hljit.cs17.g1.dao.BioMapper;
import cn.edu.hljit.cs17.g1.pojo.Bio;
import cn.edu.hljit.cs17.g1.service.IBioService;

@Service
public class BioServiceImpl implements IBioService {
	@Autowired
	private BioMapper bioMapper;

	@Override
	public List<Bio> selectByBioNo(String bioNo) {
		return bioMapper.selectByBioNo(bioNo);
	}

	@Override
	public int insertSelective(Bio record) {
		return bioMapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(Bio record) {
		return bioMapper.updateByPrimaryKeySelective(record);
	}

}
