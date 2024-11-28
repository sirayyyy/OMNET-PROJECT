package testproj.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network EthNet
{
    @display("bgb=800,386");
    submodules:
        client: StandardHost {
            @display("p=96,141");
        }
        server: StandardHost {
            @display("p=464,144");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=306,217");
        }
    connections:
        client.ethg++ <--> Eth100M <--> server.ethg++;
}

