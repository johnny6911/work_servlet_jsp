package com.koitt.board.model;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;

public interface Command {
	String execute(HttpServletRequest req, HttpServletResponse resp)
			throws ClassNotFoundException, SQLException;
	
}
