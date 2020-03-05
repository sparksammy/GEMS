#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <netinet/ether.h>
#include <linux/if_packet.h>

void ethrec() {
    int sock_r;
    sock_r=socket(AF_PACKET,SOCK_RAW,htons(ETH_P_ALL));
    if(sock_r<0) {
        printf(error in socket\n);
        return -1;
    }

    unsigned char *bufr = (unsigned char *) malloc(65536); //to get data
    memset(bufr,0,65536);
    struct sockaddr saddr;
    int saddr_len = sizeof (saddr);

    //Receive and copy in to "bufr"
    bufleng=recvfrom(sock_r,bufr,65536,0,&saddr,(socklen_t *)&saddr_len);
    if(bufleng<0) {
        printf(error in reading recvfrom function\n);
        return -1;
    }
}
