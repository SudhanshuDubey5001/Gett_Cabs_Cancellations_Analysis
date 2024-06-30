# Build up distribution of orders according to reasons for failure: cancellations before and after driver assignment, and reasons for order rejection. Analyse the resulting plot. Which category has the highest number of orders?
![Reasons for failure graph](https://pics.io/preview/667feed3f7aadc90f419aa8c/thumbnail)
 
 - As we can see clearly from the graph, cancellation by client before the driver assignment has most orders.
- 4,496 orders are cancelled before the driver assignment and only 2,811 orders are cancelled after the driver is assigned. 
- 3,406 orders were also cancelled by the system for unknown reasons. It could be because of - Unavailability of drivers in those regions, some technical issues from the client or driver side, timeout cancellation due to connectivity issues etc.    
   

# Plot the distribution of failed orders by hours. Is there a trend that certain hours have an abnormally high proportion of one category or another? What hours are the biggest fails? How can this be explained?
![image2](https://pics.io/preview/667ff359f7aadc90f419aae9/thumbnail)

- As we can see from the graph, orders around 8 am are cancelled the most followed by 9pm and then 11pm. 
- 333 orders were cancelled before the driver assignment and 241 orders are cancelled after driver assignment at 8 am. Also, at 11pm 372 orders were cancelled before driver assignment and only 67 orders were cancelled after driver was assigned.
- The graph reflects a trend that that clients tend to cancel the ride before the driver is assigned as the application might be taking too long to assign a driver plus it can also be driver is taking too long to accept the ride.

This can possibly be due to rush hour between 8am and 9am as the working class needs to go to their workplace by booking a cab and they are in hurry and if the driver is not getting assigned quickly, then they are not willing to wait and cancel the booking.    

# Plot the average time to cancellation with and without driver, by the hour. If there are any outliers in the data, it would be better to remove them. Can we draw any conclusions from this plot?

![image3](https://pics.io/preview/667ff9eef7aadc90f419ab18/thumbnail)

Removed the minutes after an hour i,e 60 minutes before cancellation as outliers.

-  Most clients cancelled the cab between 0 to 1 minute after booking the cab and rest of the clients cancelled it after 1 minutes. 
- More clients cancelled it before the driver has been assigned which shows if driver is assigned quickly, then clients are more inclined to wait for few more minutes. 
- However, if the driver is assigned and still driver hasn't arrived within 4-5 minutes, then more clients have cancelled it compared to the group of clients who are willing to wait for the driver to be assigned even after 5 minutes. 

The plot shows that driver need to be assigned quickly within 1 minute of booking and driver must reach the client within 5 minutes after booking to avoid cancellation.    


# Plot the distribution of average ETA by hours. How can this plot be explained?

![image4](https://pics.io/preview/667feed2f7aadc90f419aa8b/thumbnail)

Ignore the ETA hours on X-axis, its ETA minutes. 
- We can see the same trend as in the previous graph as most clients cancelled the ride at 4th and 5th minute (ignoring the clients who cancelled it within 1 minute after assigning driver as its not practically possible and therefore it must be some external reason from the client side). 
- This means most clients want the driver to reach them within 4 minutes. 
- As we move towards people who are willing to wait more than 4 minutes then the no. of cancellations gradually decline showing most clients will cancel the ride within first 11 minutes if the driver does not show up (see the average line)  

Let's see another graph particularly at high cancellation hours which is 8am, 9pm-11pm : 

![image4](https://pics.io/preview/668000a0f7aadc90f419ab2c/thumbnail)

- As we can see that around 8 am, people are willing to wait 12 minutes (below average) until they will cancel as it shoots up at 13,14,15th minutes. 
- While at night during 9-11pm. most clients are cancelling it within 2-4th minute which shows client's behaviour throughout day. 

With this information, we can tailor our services accordingly like we can avail more cabs around rush hour which is 7-8 am and 9-11pm and make sure the cabs reach within 4-5 minutes especially at night time. 

Please add any analysis I left in the comments :) I would also like to learn.   

