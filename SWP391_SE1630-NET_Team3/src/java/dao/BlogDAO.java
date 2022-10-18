/*
 * Copyright(C).
 * Transport and Information Network
 *
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2022-10-18      1.0                 LongLH           First Implement
 */
package dao;

import entity.Archive;
import entity.Blog;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author stick
 */
public interface BlogDAO {

    public List<Blog> searchBlogPage(String searchTitle, int month, int year, int numPerPage, int curPage) throws SQLException, ClassNotFoundException;

    public int getTotalSearchPage(String searchTitle, int month, int year, int numPerPage) throws SQLException, ClassNotFoundException;

    public Blog getBlogById(int id) throws SQLException, ClassNotFoundException;

    public List<Archive> getAllArchive() throws SQLException, ClassNotFoundException;

}
