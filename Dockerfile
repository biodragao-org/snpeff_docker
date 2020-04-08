# sourced from https://hub.docker.com/r/alexcoppe/snpeff/dockerfile
# another example resolwebio/snpeff
FROM abhi18av/biodragao_base
MAINTAINER Abhinav Sharma (@abhi18av)


ENV package_version 4_3t

ADD https://downloads.sourceforge.net/project/snpeff/snpEff_v${package_version}_core.zip /tmp/


RUN cd /tmp/ && unzip snpEff_v${package_version}_core.zip \
        && rm snpEff_v${package_version}_core.zip

CMD ["java", "-jar", "/tmp/snpEff/snpEff.jar"]
