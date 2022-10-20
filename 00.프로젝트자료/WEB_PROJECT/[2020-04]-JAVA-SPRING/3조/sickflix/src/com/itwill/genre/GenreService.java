package com.itwill.genre;

import java.util.ArrayList;

import com.itwill.jumun.JumunDAO;

public class GenreService{
	private GenreDAO genreDao;
	private static GenreService _instance;
	
	public GenreService() throws Exception{
		genreDao =new GenreDAO();
		System.out.println("GenreService()생성자:"+this);
	}
	public static GenreService getInstance() throws Exception{
		if(GenreService._instance==null) {
			GenreService._instance=new GenreService();
		}
		return GenreService._instance;
	}
	/*
	 *  장르 생성
	 */
	public int create (Genre genre) throws Exception{
		return genreDao.create(genre);
	}
	/*
	 * 장르수정
	 */
	public int update(Genre genre) throws Exception{
		return genreDao.update(genre);
	}
	/*
	 * 장르삭제
	 */
	public int remove(int g_no) throws Exception{
		return genreDao.remove(g_no);
	}
	
	/*
	 * 장르 1개보기
	 */
	public Genre findGenre(int g_no) throws Exception,GenreNotFoundException{
		Genre genre=genreDao.findGenre(g_no);
		if(genre==null) {
			throw new GenreNotFoundException(g_no+" 는 존재하지 않는 장르입니다.");
		}
		return genre;
	}
	/*
	 * 장르 전체 리스트
	 */
	public ArrayList<Genre> findGenreList() throws Exception {
		return genreDao.findGenreList();
	}
	
}
