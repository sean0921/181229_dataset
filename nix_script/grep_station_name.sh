#!/usr/bin/env bash

(grep " rel" *.OUT && grep "      abs" *.OUT)|gawk '{print $3}'|sort -u
