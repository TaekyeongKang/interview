/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.ai_interview.member.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ai_interview.member.service.InterviewMemberService;
import com.ai_interview.member.service.SampleDefaultVO;
import com.ai_interview.member.service.MemberVO;

/**
 * @Class Name : EgovSampleServiceImpl.java
 * @Description : Sample Business Implement Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */

@Service("memberService")
public class MemberServiceImpl implements InterviewMemberService {

	private static final Logger LOGGER = LoggerFactory.getLogger(MemberServiceImpl.class);

	/** SampleDAO */
	// TODO ibatis 사용
	@Resource(name = "memberDAO")
	private MemberDAO memberDAO;
	// TODO mybatis 사용
	//  @Resource(name="sampleMapper")
	//	private SampleMapper sampleDAO;

	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

	
	/**
	 * 회원정보를 가져온다.
	 * @param userid - 찾을 회원 id
	 * @return id가 일치하는 회원의 MemberVO
	 */
	@Override
	public MemberVO getMember(String userid) throws Exception {
		LOGGER.debug("로그인 userid : {}", userid);
		
		MemberVO vo = memberDAO.getMember(userid);
		
		return vo;
	}
	
	
	
	
	
	/**
	 * 글 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	@Override
	public List<?> selectMemberList(SampleDefaultVO searchVO) throws Exception {
		return memberDAO.selectMemberList(searchVO);
	}
	

	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	@Override
	public int selectMemberListTotCnt(SampleDefaultVO searchVO) {
		return memberDAO.selectMemberListTotCnt(searchVO);
	}
	

//	/**
//	 * 글을 등록한다.
//	 * @param vo - 등록할 정보가 담긴 SampleVO
//	 * @return 등록 결과
//	 * @exception Exception
//	 */
//	@Override
//	public String insertMember(MemberVO vo) throws Exception {
//		LOGGER.debug(vo.toString());
//
//		/** ID Generation Service */
//		String id = egovIdGnrService.getNextStringId();
//		vo.setUserid(id);
//		LOGGER.debug(vo.toString());
//
//		memberDAO.insertMember(vo);
//		return id;
//	}
//
//	/**
//	 * 글을 수정한다.
//	 * @param vo - 수정할 정보가 담긴 SampleVO
//	 * @return void형
//	 * @exception Exception
//	 */
//	@Override
//	public void updateSample(MemberVO vo) throws Exception {
//		sampleDAO.updateSample(vo);
//	}
//
//	/**
//	 * 글을 삭제한다.
//	 * @param vo - 삭제할 정보가 담긴 SampleVO
//	 * @return void형
//	 * @exception Exception
//	 */
//	@Override
//	public void deleteSample(MemberVO vo) throws Exception {
//		sampleDAO.deleteSample(vo);
//	}
//
//	/**
//	 * 글을 조회한다.
//	 * @param vo - 조회할 정보가 담긴 SampleVO
//	 * @return 조회한 글
//	 * @exception Exception
//	 */
//	@Override
//	public MemberVO selectSample(MemberVO vo) throws Exception {
//		MemberVO resultVO = sampleDAO.selectSample(vo);
//		if (resultVO == null)
//			throw processException("info.nodata.msg");
//		return resultVO;
//	}
//


}
