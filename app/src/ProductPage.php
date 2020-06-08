<?php

namespace {

    class ProductPage extends Page
    {

        //This specifies the page types that are allowed under this page
        //NOTE: USE   private static $allowed_children = 'ArticlePage'  IF YOU HAVE ONLY ONE PAGE TYPE
        private static $allowed_children = [
            'Product'
        ];



    }
}


