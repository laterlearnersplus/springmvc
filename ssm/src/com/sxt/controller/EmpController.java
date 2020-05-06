package com.sxt.controller;


import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.sxt.dto.EmpDto;
import com.sxt.entity.Dept;
import com.sxt.entity.Emp;
import com.sxt.service.DeptService;
import com.sxt.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;
import java.util.Map;

/**
 *         System.out.println("===========================================");
 *         System.out.println("==============页面传参："+i);
 *         System.out.println("===========================================");
 */
@Controller("empController")
@Scope(value = "prototype")
public class EmpController {
    private static final int PAGE_SIZE = 5;//每页多少条

    @Autowired
    private EmpService empService;
    @Autowired
    private DeptService deptService;

    @RequestMapping("/emp/beforeAdding.html")
    public String beforeAdding(ModelMap model){//增加的前置任务
        List<Dept> depts = this.deptService.query();
        model.put("depts",depts);
        return "emp/add";
    }

    @RequestMapping(value = "/emp",method = RequestMethod.POST)
    public String add(Emp emp){
        this.empService.add(emp);
        return "redirect:/emp";//返回get /emp 也就是查询
    }

    @RequestMapping(value = "/emp/{id}",method = RequestMethod.GET)
    public String modify(@PathVariable("id") int id, Map map){//update前置
        Emp emp = this.empService.queryById(id);
        List<Dept> depts = this.deptService.query();
        map.put("emp",emp);
        map.put("depts",depts);
        return "emp/update";
    }

    @RequestMapping(value = "/emp",method = RequestMethod.PUT)
    public String update(Emp emp){
        this.empService.update(emp);
        return "redirect:/emp";
    }

    @RequestMapping(value = "/emp/{id}",method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") int id){
//        this.empService.delete(id);
        return "redirect:/emp";
    }

    @RequestMapping(value = "/emp",method = RequestMethod.GET)
    public String query(@RequestParam(value = "currentPage",required = false,defaultValue = "0") int currentPage,
                        EmpDto empDto,
                        Map map){
        if(currentPage<=0){
            currentPage=1;
        }
        if(currentPage>pageTotal(empDto)){
            currentPage=pageTotal(empDto);
        }
        Page<Object> page = PageHelper.startPage(currentPage, PAGE_SIZE);
        List<Emp> emps = this.empService.query(empDto);
        List<Dept> depts = this.deptService.query();
        map.put("emps",emps);
        map.put("depts",depts);
        map.put("currentPage",currentPage);

        return "emp/list";
    }

    public int pageTotal(EmpDto empDto)  {//查询总页数
        Page<Object> page = PageHelper.startPage(0, PAGE_SIZE);
        this.empService.query(empDto);
        return page.getPages();
    }

}
