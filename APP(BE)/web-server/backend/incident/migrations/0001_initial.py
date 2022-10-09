# Generated by Django 4.0 on 2022-10-08 14:41

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('tms', '0009_remove_reservation_reservation_date_and_more'),
        ('login', '0004_user_permission'),
    ]

    operations = [
        migrations.CreateModel(
            name='Incident',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('incident_type', models.IntegerField(default=0)),
                ('location', models.CharField(max_length=30)),
                ('image', models.ImageField(blank=True, upload_to='')),
                ('car', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='incident_car', to='tms.car')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='incident_user', to='login.user')),
            ],
        ),
    ]
