package com.cdac.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.ITrainDao;
import com.cdac.dto.Train;

@Service
public class TrainServiceImple implements ITrainService {
	@Autowired
	private ITrainDao trainDao;

	@Override
	public void addTrain(Train train) {
		trainDao.addTrain(train);
	}

}
