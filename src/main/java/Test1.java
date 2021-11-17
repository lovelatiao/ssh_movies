import com.dao.impl.NewsDaoImpl;
import com.po.News;
import com.service.NewsService;
import com.service.impl.NewsServiceImpl;

import javax.annotation.Resource;
import java.sql.Date;

public class Test1 {

    public void test1(){

    }
    public static void main(String[] args) {
        News news = new News();
        news.setnSee(0);
        news.setnTime(new Date(System.currentTimeMillis()));
        news.setnTitle("1");
        news.setnContext("1");
        news.setnAuthor("1");
        news.setnJianjie("1");
        NewsService newsService = new NewsServiceImpl();
        newsService.addNews(news);
    }
}
