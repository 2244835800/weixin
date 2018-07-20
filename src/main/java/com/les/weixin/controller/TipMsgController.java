package com.les.weixin.controller;


import com.jhlabs.map.proj.Projection;
import com.jhlabs.map.proj.ProjectionFactory;
import com.les.weixin.dao.AdminTipMsgDao;
import com.les.weixin.dao.AdminTipImg;
import com.les.weixin.dao.AdminTip;
import com.les.weixin.entity.AdminTipMsg;
import com.les.weixin.entity.Page;
import com.les.weixin.service.TipMsgService;
import com.les.weixin.util.AppProperties;
import com.les.weixin.util.ClientUtil;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.geom.Point2D;
import java.io.File;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/TipMsg")
public class TipMsgController {
    @Autowired
    private AdminTip adminTip;
    @Autowired
    private AdminTipMsgDao admintipmsgDao;
    @Autowired
    private TipMsgService tipmsgService;
    @Autowired
    private AdminTipImg admintippictureDao;

    private static Logger log = LoggerFactory.getLogger(TipMsgController.class);


    /**
     * 上传图片信息
     *
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/upTipImg")
    public void uploadImg(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String fileName = request.getParameter("name");

        System.out.println("upImg:name:" + fileName);

        String mediaDir = fileName.substring(0, 4) + File.separator
                + fileName.substring(4, 6) + File.separator
                + fileName.substring(6, 8);
        System.out.println("upImg:mediaDir:" + mediaDir);

        String filePathName = mediaDir + File.separator + "wx_" + fileName;

        System.out.println("upImg:filePathName:" + mediaDir);

        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        try {
            log.info(AppProperties.getValue("UPLOAD.IMAGE.PATH") + File.separator + mediaDir);
            File fileDir = new File(AppProperties.getValue("UPLOAD.IMAGE.PATH") + File.separator + mediaDir);
            if (!fileDir.exists()) {
                fileDir.mkdirs();
            }
            MultipartFile multipartFile = multipartRequest.getFile("imagefile");
            if (multipartFile != null) {
                multipartFile.transferTo(new File(AppProperties.getValue("UPLOAD.IMAGE.PATH") + File.separator + filePathName));
            }
            Map<String, String> resultMap = new HashMap<String, String>();
            resultMap.put("filename", fileName);
            resultMap.put("path", "media" + File.separator + filePathName);
            System.out.println("upImg:path:" + "media" + File.separator + filePathName);
            response.getWriter().print(JSONObject.fromObject(resultMap));
        } catch (Exception es) {
            System.out.println(es);
            es.printStackTrace();
        }
    }


    /**
     * 添加举报
     *
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/addTipMsgAPP")
    public void addTipMsgAPP(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ClientUtil clientUtil = new ClientUtil();
        String name = request.getParameter("name");
        String telphone = request.getParameter("telphone");
        String description = request.getParameter("description");
        String accountId = request.getParameter("accountId");
        String pic = request.getParameter("pic");
        String comments = request.getParameter("comments");
        String json = "";
        try {
            AdminTipMsg tipMsg = new AdminTipMsg();
            tipMsg.setStrPersonName(name);
            tipMsg.setStrPersonTelphone(telphone);
            tipMsg.setStrTipDescription(description);
            tipMsg.setComments(comments);
            tipMsg.setStrTipSource("2");
            tipMsg.setStrTipState("0");
            tipMsg.setStrTipType("1");
            tipMsg.setCommitTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
            tipmsgService.addTipMsg(tipMsg, pic);

            json = clientUtil.getMsgArrayJson("SUC", true);
            clientUtil.flashDataToClient(response, json);
        } catch (Exception e) {
            json = "{\"rec\":\"FAL\",\"errNo\":\"F1003\"}";
            clientUtil.flashDataToClient(response, json);
            e.printStackTrace();
        }
    }

    /**
     * APP举报列表
     */
    @RequestMapping("/TipMsgList")
    public void TipMsgList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ClientUtil clientUtil = new ClientUtil();
        String accountId = request.getParameter("accountId");
        String pageNow = request.getParameter("pageNow");
        String json = "";
        try {
            Map<String, Object> map = tipmsgService.selectListByAccountId(Integer.parseInt(pageNow), accountId);
            json = clientUtil.getMsgArrayJson(map, true);
            clientUtil.flashDataToClient(response, json);
        } catch (Exception e) {
            json = "{\"rec\":\"FAL\",\"errNo\":\"F1003\"}";
            clientUtil.flashDataToClient(response, json);
        }
    }

    /**
     * APP举报详情
     */
    @RequestMapping("/TipMsgDetail")
    public void TipMsgDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ClientUtil clientUtil = new ClientUtil();
        String tipId = request.getParameter("tipId");
        String json = "";
        try {
            Map<String, Object> map = tipmsgService.selectByTipId(tipId);
            json = clientUtil.getMsgArrayJson(map, true);
            clientUtil.flashDataToClient(response, json);
        } catch (Exception e) {
            json = "{\"rec\":\"FAL\",\"errNo\":\"F1003\"}";
            clientUtil.flashDataToClient(response, json);
        }
    }

    /**
     * 手机微信web添加举报
     */
    @RequestMapping("/addTipMsg")
    public String addTipMsg(Model model, HttpServletRequest request, HttpServletResponse response,
                            AdminTipMsg tipMsg, String strTipPic1, String strTipPic2) {
        System.out.println("开始增加tipmsg");
        System.out.println("tipmsg:"+tipMsg.toString());
        System.out.println("strTipPic1:"+strTipPic1);
        System.out.println("strTipPic2"+strTipPic2);

        tipMsg.setStrTipSource("1");
        tipMsg.setStrTipState("0");
        tipMsg.setCommitTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        tipMsg.setStrPic1(strTipPic1.replace("\\", "/"));
        tipMsg.setStrPic2(strTipPic2.replace("\\", "/"));
        tipMsg.setStrTipTitle(tipMsg.getStrPersonName() + "微信举报");
        String x = tipMsg.getX();
        String y = tipMsg.getY();
        Double lat = Double.parseDouble(y);
        Double lng = Double.parseDouble(x);
        Projection proj = ProjectionFactory.getNamedPROJ4CoordinateSystem("epsg:4547");
        Point2D.Double src = new Point2D.Double(lng, lat);
        Point2D.Double dst = new Point2D.Double(0, 0);
        proj.transform(src, dst);
        tipMsg.setX(new DecimalFormat("#.####").format(dst.getX()));
        tipMsg.setY(new DecimalFormat("#.####").format(dst.getY()));

        System.out.println("tipmsg:" +
                tipMsg.getStrPic1() + "-" +
                tipMsg.getStrPic2() + "-" +
                tipMsg.getOpenid() + "-" +
                tipMsg.getX() + "-" +
                tipMsg.getY() + "-" +
                tipMsg.getX() + "-" +
                tipMsg.getY());

        adminTip.addTipMsg(tipMsg);
        return "success";
    }


    /**
     * web举报页面
     */
    @RequestMapping("/TipMsg")
    public String TipMsg(Model model, HttpServletRequest request, HttpServletResponse response, AdminTipMsg tipMsg) {
        model.addAttribute("id", "5");
        return "Tip/addTipMsg";
    }

    /**
     * web提交举报form请求，然后跳转页面
     */
    @RequestMapping("/addTipMsgForm")
    public String addTipMsgForm(Model model, HttpServletRequest request, HttpServletResponse response, AdminTipMsg tipMsg, String strTipPic1, String strTipPic2) {
        tipMsg.setStrTipSource("1");
        tipMsg.setStrTipState("0");
        tipMsg.setStrTipType("1");
        tipMsg.setCommitTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        tipmsgService.addTipMsg(tipMsg);

        if (strTipPic1 != null && !strTipPic1.equals("")) {
            com.les.weixin.entity.AdminTipPicture picture1 = new com.les.weixin.entity.AdminTipPicture();
            picture1.setStrTipId(tipMsg.getStrTipId());
            picture1.setStrTipPicUrl(strTipPic1);
            admintippictureDao.addPicture(picture1);
            if (strTipPic2 != null && !strTipPic2.equals("")) {
                com.les.weixin.entity.AdminTipPicture picture2 = new com.les.weixin.entity.AdminTipPicture();
                picture2.setStrTipId(tipMsg.getStrTipId());
                picture2.setStrTipPicUrl(strTipPic2);
                admintippictureDao.addPicture(picture2);
            }
        }


        return "redirect:/TipMsg/tipList?pageNow=1";
    }

    /**
     * web举报列表
     */
    @RequestMapping("/tipList")
    public String tipList(Model model, int pageNow) {

        Page page = null;
        int totalCount = adminTip.selectCount();
        if (totalCount == 0) {
            totalCount = 1;
        }
        List<AdminTipMsg> list = new ArrayList<AdminTipMsg>();
        if (pageNow != 0) {
            page = new Page(totalCount, pageNow);
            page.setPageSize(20);
            list = adminTip.selectList(page.getStartPos(), page.getPageSize());
        } else {
            page = new Page(totalCount, 1);
            page.setPageSize(20);
            list = adminTip.selectList(page.getStartPos(), page.getPageSize());
        }


        model.addAttribute("list", list);
        model.addAttribute("page", page);
        model.addAttribute("id", "5");
        return "Tip/tipList";
    }
    /**
     * web举报详情
     */
    @RequestMapping("/detail")
    public String detail(Model model, String tipId) {
        AdminTipMsg adminTipMsg = adminTip.selectById(tipId);
        model.addAttribute("adminTipMsg", adminTipMsg);
        List<com.les.weixin.entity.AdminTipPicture> list = admintippictureDao.selectListByTipId(tipId);
        if (list.size() == 0) {
            model.addAttribute("strTipPic1", "");
            model.addAttribute("strTipPic2", "");
        } else if (list.size() == 1) {
            model.addAttribute("strTipPic1", list.get(0).getStrTipPicUrl());
            model.addAttribute("strTipPic2", "");
        } else if (list.size() == 2) {
            model.addAttribute("strTipPic1", list.get(0).getStrTipPicUrl());
            model.addAttribute("strTipPic2", list.get(1).getStrTipPicUrl());
        }

        model.addAttribute("id", "5");
        return "Tip/tipDetail";
    }

    /**
     * 微信举报详情页面
     */
    @RequestMapping("/chatDetail")
    public String chatDetail(Model model, String tipId) {
        AdminTipMsg adminTipMsg = adminTip.selectById(tipId);
        adminTipMsg.setStrPic1(AppProperties.getValue("CG.SYSTEM.MEDIA.URL") + adminTipMsg.getStrPic1());
        adminTipMsg.setStrPic2(adminTipMsg.getStrPic2() != null ? AppProperties.getValue("CG.SYSTEM.MEDIA.URL") + adminTipMsg.getStrPic2() : "");
        model.addAttribute("adminTipMsg", adminTipMsg);
//        model.addAllAttributes("")
//        List<AdminTipImg> list = admintippictureDao.selectListByTipId(tipId);
//        if (list.size() == 0) {
//            model.addAttribute("strTipPic1", "");
//            model.addAttribute("strTipPic2", "");
//        } else if (list.size() == 1) {
//            model.addAttribute("strTipPic1", list.get(0).getStrTipPicUrl());
//            model.addAttribute("strTipPic2", "");
//        } else if (list.size() == 2) {
//            model.addAttribute("strTipPic1", list.get(0).getStrTipPicUrl());
//            model.addAttribute("strTipPic2", list.get(1).getStrTipPicUrl());
//        }


        return "Tip/chatTipDetail";
    }



    @RequestMapping("/selectAll")
    public void selectAll2(HttpServletRequest request, Model model) {
        adminTip.selectAll();
    }
}
