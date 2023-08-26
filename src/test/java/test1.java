import com.wang.bean.news;
import com.wang.service.serviceimpl.filmserviceimpl;
import com.wang.service.serviceimpl.newsserviceimpl;
import com.wang.service.serviceimpl.typeserviceimpl;
import org.junit.Test;

import java.util.List;

public class test1 {



    @Test
    public void print(){

       filmserviceimpl f=new filmserviceimpl();
       f.updatefilm("wang","wanwwwx","wang","wang","wang","wang",3);

    }
}
