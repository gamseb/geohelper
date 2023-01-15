from django.shortcuts import render
from django.http import HttpResponse
from django.template import Context, Template
import json


def phone_prefix(request):
    with open('geohelper/resources/countries.json') as file:
        countries = json.load(file)

    context = {
        'countries': countries
    }
    return render(request, 'phone_prefix/phone_prefix.html', context)
