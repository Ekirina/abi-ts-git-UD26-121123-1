package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.ISuministraDAO;
import com.example.demo.dto.Suministra;

@Service
public class SuministraServiceImpl implements ISuministraService {
	@Autowired
	ISuministraDAO iSuministraDAO;

	@Override
	public List<Suministra> listarSuministra() {
		return iSuministraDAO.findAll();

	}

	@Override
	public Suministra guardarSuministra(Suministra suministra) {
		return iSuministraDAO.save(suministra);

	}

	@Override
	public Suministra suministraXID(int id) {
		return iSuministraDAO.findById(id).get();

	}

	@Override
	public Suministra actualizarSuministra(Suministra suministra) {
		return iSuministraDAO.save(suministra);

	}

	@Override
	public void eliminarSuministra(int id) {
		iSuministraDAO.deleteById(id);				
	}
	

}
